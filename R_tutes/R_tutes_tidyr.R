### if not already installed, install these OHI favorites:
ohi_packs <- c('readr', 'stringr', 'tidyr', 'dplyr')
for (pack in ohi_packs) {
 if (!require(pack, character.only = TRUE)) 
   install.packages(pack)
}

### once installed, you only need to attach the packages from the library:
library(readr)
library(stringr)
library(tidyr)
library(dplyr)

### The Ocean Health Index team uses functions from `tidyr` and `dplyr` extensively.  
### Being familiar with these packages will be useful in interpreting existing OHI
### code and in developing code for modified and updated goal models.  These sample
### data files are used for the tutorial examples:

### download FAO commodity sample data and OHI lookup table:
### * https://github.com/OHI-Science/ohimanual/blob/masterR_tutes/data/commodities_sample.csv
### * https://github.com/OHI-Science/ohimanual/blob/masterR_tutes/data/comm2prod_sample.csv
dir_data  <- './R_tutes/data'  ### wherever you saved your files

data_wide <- read.csv(sprintf('%s/commodities_sample.csv', dir_data))
  ### harvest data on marine commodities (FAO)
lookup    <- read.csv(sprintf('%s/comm2prod_sample.csv',   dir_data))
  ### an OHI lookup table to assign individual commodities into product groups

##############################################################/
### tidyr examples ====
### Gather data
### Transform data from wide format (some variables are contained in
### rows, rather than columns) into long format (each column is a variable,
### and each row is a single observation.
data_long <- data_wide %>%
  gather(year, tonnes, -Country, -Commodity, -Trade)
    ### Note that the (-Country, -Commodity, -Trade) arguments tell the
    ### function to gather all except those rows while gathering, and instead
    ### repeat these values for each of the observations in the new 'year'
    ### column.    

### The same result could be achieved with this alternative function call:
data_long1 <- data_wide %>%
  gather(year, tonnes, X2007:X2011)

### Note that you might get a warning message: "attributes are not
### identical across measure variables; they will be dropped".  If you
### inspect the original data_wide table, some columns ('X2009') are all
### integer values, and others ('X2008') contain a mix of numbers and
### letters (e.g. '...' or '0 0').  R tries to figure out what type of
### data is in each column, but when faced with complex data, it has to
### resort to more flexible data classes, e.g. character.


### Spread data (less commonly used)
### Transform data from long format (columns as variables) into wide
### format (rows as variables)
data_wide_again <- data_long %>%
  spread(year, tonnes)

harvest <- data_long


##############################################################/
### dplyr examples ====
### Select and rename columns
harvest <- harvest %>% 
  select(-Trade) %>% 
  rename(country = Country, commodity = Commodity)

### use mutate() to change values in dataset.
library(stringr)

harvest <- harvest %>%
  mutate(
    year   = str_replace(year, fixed('X'), ''),
    tonnes = str_replace(tonnes, fixed('...'),    NA),
    tonnes = str_replace(tonnes, fixed('0 0'), 0.1),
    tonnes = ifelse(tonnes =='', NA, tonnes)) %>%
  mutate(
    tonnes = as.numeric(as.character(tonnes)),
    year   = as.integer(as.character(year)))
      # looks odd, but required because these values are stored as 'factor'
      # class rather than 'character' class.... as.character() forces factor
      # into character, and then as.integer() and as.numeric converts
      # characters into integers/numbers where possible.


### Summarize information by collapsing each group to just a single
### summary value (total tonnage by commodity by country).
### Use group_by() to summarize harvest information by commodity for 
### each country. When done, it's a good idea to use ungroup().
h_tot_sum <- harvest %>%
  group_by(country, commodity) %>%
  summarize(harvest_tot = sum(tonnes, na.rm = TRUE)) %>%
  ungroup()

### Summarize information by creating a new variable to contain summary
###   value; report value for every observation
h_tot_mut <- harvest %>%
  group_by(country, commodity) %>%
  mutate(harvest_tot = sum(tonnes, na.rm = TRUE)) %>%
  ungroup() %>%
  arrange(country, commodity)

### use desc() in arrange to sort in reverse order
harvest_reverse <- h_tot_mut %>%
  arrange(desc(year), country, desc(commodity))
    ### sorted by year newer-to-older, and then within each year 
    ### by country in alpha order, then within each country/year
    ### by commodity in reverse alpha order.

##############################################################/
### %>% operator examples ====
###
### Ugly nested functions:
h_recent_totals <-arrange(mutate(filter(group_by(harvest, country, commodity),
  year >= 2009), harvest_tot = sum(tonnes, na.rm = TRUE)), country, commodity)

### Boring and unintuitive sequential functions:
h_temp <- group_by(harvest, country, commodity)
h_temp <- filter(h_temp, year >= 2009)
h_temp <- mutate(h_temp, harvest_tot = sum(tonnes, na.rm = TRUE))
h_recent_totals1 <- arrange(h_temp, country, commodity)

### Glorious chained functions:
h_recent_totals2 <- harvest %>%
  group_by(country, commodity) %>%
  filter(year >= 2009) %>%
  mutate(harvest_tot = sum(tonnes, na.rm = TRUE)) %>%
  arrange(country, commodity)
