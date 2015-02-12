# Create and format need_pov data layer for AO goal

# by J. Lowndes Feb 11 2015 lowndes@nceas.ucsb.edu


## setup ----

# data filepaths
file_pop  = '~/github/blz-prep/population/pop_by_district_blz.csv'
file_pov  = '~/github/blz-prep/poverty/perc_below_poverty_blz.csv'

file_save = '~/github/blz/subcountry2014/layers/ao_need_pov_blz2014.csv'

# region-to-distict-lookup
rgn_lookup = '~/github/blz-prep/rgn_district_lookup.csv'


# load packages/libraries
library(dplyr)    # install.packages('dplyr')   for data manipulation 
library(tidyr)    # install.packages('tidyr')   for data manipulation 
library(stringr)  # install.packages('stringr') for string manipulation

# Access and clean data ----

# population data
data_pop = read.csv(file_pop); head(data_pop)

sapply(data_pop, class)                                     # check the type of variable

pop = data_pop %>%                                          # %>% allows you to 'chain' together operations 
  mutate(year = 2010,                                       # add a year column 
         population = as.numeric(                           # pop: remove commas and change to numeric
           str_replace(Population..2010.census., ',', ''))) %>%                       
  select(district = District,                               # just select the columns we want in order
         year,
         population); head(pop)    

# poverty data
data_pov = read.csv(file_pov, check.names=F); head(data_pov)

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

# read in region-to-district lookup table
rgns = read.csv(rgn_lookup)

# join p with rgn_lookup; remove non-coastal districts

d = rgns %>% 
  left_join(p, by = 'district'); head(d)

# Save final data layer ----

# select necessary columns, rename one last time
d = d %>%
  select(rgn_id, 
         year, 
         percent = pov_percent)

# save data layer in layers folder: github/blz/subcountry2014/layers
 write.csv(d, file_save, row.names=F)


# --- fin ---


 