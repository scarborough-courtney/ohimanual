library(dplyr)
library(tidyr)

# Read files ----
data_wide <- read.csv("commodities_sample.csv")
lookup <- read.csv("comm2prod_sample.csv")

##############################################################/
### tidyr examples ====
### Gather data
data_long <- data_wide %>% 
  gather(year, tonnes, -Country, -Commodity, -Trade)

data <- data_long

### Spread data (less commonly used)
data_wide_again <- data_long %>% 
  spread(year, tonnes)

### Separate
data <- data %>% separate(Trade, c('trade', 'market'), sep = '_')
