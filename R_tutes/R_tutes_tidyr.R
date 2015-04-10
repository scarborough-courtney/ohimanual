library(dplyr)
library(tidyr)

# Read files ----
data_wide <- read.csv("data/commodities_sample.csv")
lookup <- read.csv("data/comm2prod_sample.csv")

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

### Spread data (less commonly used)
### Transform data from long format (columns as variables) into wide
### format (rows as variables)
data_wide_again <- data_long %>% 
  spread(year, tonnes)

harvest <- data_long


##############################################################/
### dplyr examples ====
### Select and rename columns
harvest <- harvest %>% select(-Trade) %>% rename(country = Country, commodity = Commodity)

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

### use group_by() to summarize harvest information by commodity for each country
harvest <- harvest %>% 
  group_by(country, commodity)

h_tot_sum <- harvest %>% 
  summarize(harvest_tot = sum(tonnes, na.rm = TRUE))
### Summarize information by collapsing each group to just a single 
###   summary value (total tonnage by commodity by country)

h_tot_mut <- harvest %>% 
  mutate(harvest_tot = sum(tonnes, na.rm = TRUE)) %>% 
  arrange(country, commodity)
### Summarize information by creating a new variable to contain summary 
###   value; report value for every observation

##############################################################/
### %>% operator examples ====
### 
### Ugly nested functions:
h_recent_totals2 <-arrange(mutate(filter(group_by(harvest, country, commodity), year >= 2009), harvest_tot = sum(tonnes, na.rm = TRUE)), country, commodity)

### Boring sequential functions:
h_temp <- group_by(harvest, country, commodity)
h_temp <- filter(h_temp, year >= 2009)
h_temp <- mutate(h_temp, harvest_tot = sum(tonnes, na.rm = TRUE))
h_recent_totals1 <- arrange(h_temp, country, commodity)

### Glorious chained functions:
h_recent_totals <- harvest %>% 
  group_by(country, commodity) %>% 
  filter(year >= 2009) %>%
  mutate(harvest_tot = sum(tonnes, na.rm = TRUE)) %>% 
  arrange(country, commodity)

