# R Tutorials Introduction

Ocean Health Index R code uses several packages and best practices to faciliate
understanding and collaboration. These approaches are presented here, along with
examples using data included in global OHI assessments.


##R Very Basics:
* Have you already downloaded and installed [R](http://www.r-project.org/)?
* Have you already downloaded and installed [RStudio](http://www.rstudio.com/)?
* Have you walked through the excellent interactive tutorials
from [swirl](http://swirlstats.com/students.html)?

##R Basics for Ocean Health Index
```
### if not already installed, install these OHI favorites (one time):
install.packages(c('tidyr', 'dplyr'))

### once installed, attach the packages from the library (each R session):
library(tidyr)
library(dplyr)
```
The Ocean Health Index (OHI) team uses functions from `tidyr` and `dplyr`
extensively.  Being familiar with these packages will be useful in interpreting
existing OHI code and in developing code for modified and updated goal models.  
* Use `tidyr` to organize your data into 'tidy data' format. As Hadley Wickham,
`tidyr`'s developer, puts it, "structuring datasets to facilitate analysis":
[`tidyr` tutorial](R_tutes_tidyr.md)

* Use `dplyr` to filter, calculate, and 'wrangle' your tidy data:
[`dplyr` tutorial](R_tutes_dplyr.md)

* Use OHI best practices to keep your code reader-friendly: [notes](R_tutes_notes.md)



These OHI R tutorials introduce you to typical coding practices commonly seen
in OHI scripts and functions.  These sample data files are used for the
tutorial examples:

* [github.com/OHI-Science/ohimanual/R_tutes/data/commodities_sample.csv](https://github.com/OHI-Science/ohimanual/blob/master/R_tutes/data/commodities_sample.csv)
* [github.com/OHI-Science/ohimanual/R_tutes/data/comm2prod_sample.csv](https://github.com/OHI-Science/ohimanual/blob/master/R_tutes/data/comm2prod_sample.csv)


The `commodities_sample.csv` is a truncated version of the [Fishery Commodities
Global Production and Trade dataset](http://www.fao.org/fishery/statistics/global-commodities-production/en)
from the FAO.  Download these data so you can try the examples yourself. To
load them into R:
```
### load FAO commodity sample data and OHI lookup table:
dir_data <- './R_tutes/data'  ### wherever the files are saved on your hard drive

data     <- read.csv(sprintf('%s/commodities_sample.csv', dir_data))
  ### harvest data on marine commodities (FAO)
lookup   <- read.csv(sprintf('%s/comm2prod_sample.csv',   dir_data))
  ### an OHI lookup table to assign individual commodities into product groups
```
