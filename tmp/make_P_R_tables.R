library(dplyr)

# pressures
a = read.csv('~/github/ohi-global/eez2014/conf/pressures_matrix.csv')
p = names(a)

c = read.csv('~/github/ecu/subcountry2014/layers.csv') %>% 
  select(layer, name) %>%
  filter(layer %in% p)

knitr::kable(c)



# resilience

b = read.csv('~/github/ohi-global/eez2014/conf/resilience_matrix.csv')
r = names(b)

d = read.csv('~/github/ecu/subcountry2014/layers.csv') %>% 
  select(layer, name) %>%
  filter(layer %in% r)

knitr::kable(d)