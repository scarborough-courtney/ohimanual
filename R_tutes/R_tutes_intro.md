# R Tutes Intro

```
### if not already installed, install these OHI favorites:
install.packages(c('readr', 'stringr', 'tidyr', 'dplyr'))

### once installed, attach the packages from the library:
library(readr)
library(stringr)
library(tidyr)
library(dplyr)
```
The Ocean Health Index team uses functions from `tidyr` and `dplyr` extensively.  
Being familiar with these packages will be useful in interpreting existing OHI
code and in developing code for modified and updated goal models.  These sample
data files are used for the tutorial examples:
* https://github.com/OHI-Science/ohimanual/blob/masterR_tutes/data/commodities_sample.csv
* https://github.com/OHI-Science/ohimanual/blob/masterR_tutes/data/comm2prod_sample.csv

```
### download FAO commodity sample data and OHI lookup table:
dir_data <- './R_tutes/data'  ### wherever you saved your files

data     <- read.csv(sprintf('%s/commodities_sample.csv', dir_data))
  ### harvest data on marine commodities (FAO)
lookup   <- read.csv(sprintf('%s/comm2prod_sample.csv',   dir_data))
  ### an OHI lookup table to assign individual commodities into product groups
```
Use `tidyr` to organize your data into 'tidy data' format:
* [`tidyr` tutorial](R_tutes_tidyr.md)
    * [`tidyr::gather()`:](R_tutes_tidyr.md#tidyrgather)
    Converts row-based data (wide format) to column-based data (long format)
    to facilitate data cleaning and 'tidy data' manipulation

Use `dplyr` to filter, calculate, and manipulate your tidy data:
* [`dplyr` tutorial](R_tutes_dplyr.md)
    * [`%>%` (chaining operator):](R_tutes_dplyr.md#-operator)
    allows chaining of functions for cleaner, easier-to-read code
    * [`dplyr::select()`:](R_tutes_dplyr.md#dplyrselect)
    selects variables to be retained or dropped from dataset
    * [`dplyr::filter()`:](R_tutes_dplyr.md#dplyrfilter)
    filters data set by specified variable values
    * [`dplyr::arrange()`:](R_tutes_dplyr.md#dplyrarrange)
    sorts dataset by specified variables
    * [`dplyr::mutate()`:](R_tutes_dplyr.md#dplyrmutate)
    adds variables or modifies existing variables
    * [`dplyr::summarize()`:](R_tutes_dplyr.md#dplyrsummarize)
    uses analysis functions (sum, mean, etc) to summarize specified variables
    * [`dplyr::group_by()`:](R_tutes_dplyr.md#dplyrgroup_by)
    groups data by specified variables, allowing for group-level data processing.

Use OHI best practices to keep your code friendly:
* [notes](R_tutes_notes.md)
