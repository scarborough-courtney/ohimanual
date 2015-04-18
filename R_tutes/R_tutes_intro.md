# R Tutes Intro
##R Very Basics:
* Have you already downloaded and installed [R](http://www.r-project.org/)?
* Have you already downloaded and installed [RStudio](http://www.rstudio.com/)?
* Have you walked through the excellent interactive tutorials from [swirl](http://swirlstats.com/students.html)?

##R Basics for Ocean Health Index
```
### if not already installed, install these OHI favorites:
install.packages(c('tidyr', 'dplyr'))

### once installed, attach the packages from the library:
library(tidyr)
library(dplyr)
```
The Ocean Health Index (OHI) team uses functions from `tidyr` and `dplyr` extensively.  
Being familiar with these packages will be useful in interpreting existing OHI
code and in developing code for modified and updated goal models.  

* If you haven't already, try out the swirl tutorials on `tidyr` and `dplyr`
to introduce you to the basics.

The OHI R tutorials introduce you to typical coding practices commonly seen
in OHI scripts and functions.  These sample data files are used for the
tutorial examples:
* https://github.com/OHI-Science/ohimanual/blob/masterR_tutes/data/commodities_sample.csv
* https://github.com/OHI-Science/ohimanual/blob/masterR_tutes/data/comm2prod_sample.csv

```
### load FAO commodity sample data and OHI lookup table:
dir_data <- './R_tutes/data'  ### wherever you saved your files

data     <- read.csv(sprintf('%s/commodities_sample.csv', dir_data))
  ### harvest data on marine commodities (FAO)
lookup   <- read.csv(sprintf('%s/comm2prod_sample.csv',   dir_data))
  ### an OHI lookup table to assign individual commodities into product groups
```
Use `tidyr` to organize your data into 'tidy data' format - in Hadley's words, "structuring datasets to facilitate analysis":
* [`tidyr` tutorial](R_tutes_tidyr.md)
    * [`tidyr::gather()`:](R_tutes_tidyr.md#tidyrgather)
    Converts row-based data (wide) to column-based data (long)
    to facilitate data tidying and analysis

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

Use OHI best practices to keep your code reader-friendly:
* [notes](R_tutes_notes.md)
