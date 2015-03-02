# Create and format need_pov data layer for AO goal

# by J. Lowndes Feb 11 2015 lowndes@nceas.ucsb.edu


## Setup ----

# data filepaths
dir_blz   = '~/github/ohimanual/tutorials/tbx_modifications/blz-prep'
file_pop  = 'population/pop_by_district_blz.csv'
file_pov  = 'poverty/perc_below_poverty_blz.csv'

dir_save  = '~/github/blz/subcountry2014/layers'
file_save = 'ao_need_pov_blz2014.csv'

# district-to-region lookup
file_rgn_lookup = 'district_rgn_lookup.csv'


# load packages/libraries
library(dplyr)    # install.packages('dplyr')   for data manipulation 
library(tidyr)    # install.packages('tidyr')   for data manipulation 
library(stringr)  # install.packages('stringr') for string manipulation

# Access and clean raw data ----

# population data
data_pop = read.csv(file.path(dir_blz, file_pop)); head(data_pop)

sapply(data_pop, class)                                     # check the type of variable

pop = data_pop %>%                                          # %>% allows you to 'chain' together operations. See TIPS below
  mutate(year = 2010,                                       # add a year column 
         population = as.numeric(                           # pop: remove commas and change to numeric
           str_replace(Population..2010.census., ',', ''))) %>%                       
  select(district = District,                               # just select the columns we want in order
         year,
         population); head(pop)    

# poverty data
data_pov = read.csv(file.path(dir_blz, file_pov), 
                    check.names=F); head(data_pov)          # check.names=F for year headers

pov = data_pov %>%
  gather(year, percent, -Country) %>%
  rename(country = Country) %>%
  mutate(year = as.numeric(as.character(year))); head(pov)   # change to numeric


# Calculate percent poverty by district----

# join pop and pov data
p = pop %>%
  left_join(pov, by=('year')) %>%
  select(-country); head(p)

# calculate percent of total population in poverty in each district
p = p %>%                                        # note: this could be a part of the chain above; separated for clarity
  mutate(pov_perc_blz = percent/100,
         pop_perc_by_district = population / sum(population),
         pov_perc_by_district = pop_perc_by_district * pov_perc_blz) %>%
  select(district, year, pov_percent = pov_perc_by_district); head(p)
  
# Add region identifiers ----

# read in district-to-region lookup table
rgn_lookup = read.csv(file.path(dir_blz, file_rgn_lookup))

# join p with file_rgn_lookup; remove non-coastal districts

d = rgn_lookup %>% 
  left_join(p, by = 'district'); head(d)

# Save final data layer ----

# select necessary columns, rename one last time
d = d %>%
  select(rgn_id, 
         year, 
         percent = pov_percent)

# save data layer in layers folder: github/blz/subcountry2014/layers
#write.csv(d, file.path(dir_save, file_save), row.names=F)


# TIPS ----

# The dplyr package uses chaining ( %>% ) to operate on data in sequence without saving temporary variables. For example, it would read like this:

# awesome_data = raw_interesting_data %>%
#   transform(somehow) %>%
#   filter(the_good_parts) %>%
#   finalize

# for more information: http://blog.rstudio.org/2014/12/01/magrittr-1-5/

# --- fin ---


 