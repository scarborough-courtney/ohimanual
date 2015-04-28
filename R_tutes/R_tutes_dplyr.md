#`dplyr` functions
The `dplyr` package includes a number of functions to easily, quickly, and
intuitively wrangle your data. Here is a quick introduction with examples from data used in the Ocean Health Index.

From [RStudio's introduction to `dplyr`](http://blog.rstudio.org/2014/01/17/introducing-dplyr/):

>The bottleneck in most data analyses is the time it takes for you to figure
out what to do with your data, and `dplyr` makes this easier by having individual
functions that correspond to the most common operations...

>Each function does one only thing, but does it well.

Install `dplyr`:
```
install.packages('dplyr')
library(dplyr)
```
Follow directions on [intro](R_tutes_intro.md) to download sample data
used in these examples.

The most important `dplyr` functions to understand for data processing will be
 `group_by()`, `mutate()`, and `summarize()`. Also important, `dplyr` introduces
the ability to perform subsequent functions in a logical and intuitive manner,
using the `%>%` chain operator.

* [`%>%` (chaining operator):](R_tutes_dplyr.md#-operator) allows sequential
chaining of functions for cleaner, easier-to-read code
* [`dplyr::select()`:](R_tutes_dplyr.md#dplyrselect) selects variables to be retained
or dropped from dataset
* [`dplyr::filter()`:](R_tutes_dplyr.md#dplyrfilter) filters data set by specified
criteria
* [`dplyr::arrange()`:](R_tutes_dplyr.md#dplyrarrange) sorts dataset by specified
variables
* [`dplyr::mutate()`:](R_tutes_dplyr.md#dplyrmutate) adds variables or modifies
existing variables
* [`dplyr::summarize()`:](R_tutes_dplyr.md#dplyrsummarize) uses analysis
functions (sum, mean, etc) to summarize/aggregate specified variables
* [`dplyr::group_by()`:](R_tutes_dplyr.md#dplyrgroup_by) groups data by
specified variables, allowing for group-level data processing.

Other `dplyr` references:

* [RStudio blogs: Introducing dplyr:](http://blog.rstudio.org/2014/01/17/introducing-dplyr/): philosophy, examples, and basics of `dplyr`
* [Cran dplyr vignette:](http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html) Walkthrough of `dplyr` with examples
* [`dplyr` and pipes: the basics:](http://seananderson.ca/2014/09/13/dplyr-intro.html) More examples of `dplyr` functions, and more depth on `%>%`
* [swirl tutorial package:](http://swirlstats.com/students.html) A tutorial package built directly into R.  Section 2: 'Getting and Cleaning Data' runs you through `dplyr` and `tidyr` basics
* [R data wrangling cheat sheet:](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf) a quick reference guide to `tidyr` and `dplyr` functions

##%>% operator
###Description
The `%>%` operator allows you to 'pipe' or 'chain' a number of function calls,
in which the output dataframe of one function is fed directly into the next
function as the input dataframe.
This lets you avoid creating temporary variables to store intermediate values,
and lets you avoid nesting multiple functions.  Using `%>%` makes your code more elegant, streamlined, and easy to read since you are able to write your code on multiple indented lines.  From
[`dplyr` and pipes: the basics:](http://seananderson.ca/2014/09/13/dplyr-intro.html)  

>OK, here's where it gets cool. We can chain `dplyr` functions in succession.
This lets us write data manipulation steps in the order we think of them and
avoid creating temporary variables in the middle to capture the output. This
works because the output from every `dplyr` function is a data frame and the
first argument of every `dplyr` function is a data frame.

###Usage
```
data_out <- f(data_in, args)
  ### standard function call

data_out <- data_in %>% f(args)
  ### function call using %>% operator. data_in is passed as first argument
  ### of function().

data_out <- data_in %>%
  f1(args1) %>%
  f2(args2) %>%
  f3(args3) %>% ...
  ### Output of function can be passed to another function immediately,
  ### without need for temporary storage. Indented format for legibility,
  ### see how pretty it looks?
```

###Example
```
### Bad!  Nested functions: read from inside out - hard to decipher
  h_recent_totals1 <- arrange(mutate(filter(group_by(harvest, country, commodity),
    year >= 2009), harvest_tot = sum(tonnes, na.rm = TRUE)), country, commodity)

### Better: Line by line. Easier to read, but have to wait for the end to see
### what it does.  Temp variables add more places for errors and bugs.
  h_temp <- group_by(harvest, country, commodity)
  h_temp <- filter(h_temp, year >= 2009)
  h_temp <- mutate(h_temp, harvest_tot = sum(tonnes, na.rm = TRUE))
  h_recent_totals2 <- arrange(h_temp, country, commodity)

### Best!  Chained format intuitively links together the functions. Saves
### typing, fewer opportunities for errors, easier to debug. The %>% operator
### automatically indents each following line for easy reading.
  h_recent_totals3 <- harvest %>%
    group_by(country, commodity) %>%
    filter(year >= 2009) %>%
    mutate(harvest_tot = sum(tonnes, na.rm = TRUE)) %>%
    arrange(country, commodity)
```

##dplyr::select()
###Description
`select()` allows you to choose specific columns/variables from your dataset,
and drop all others.  Alternately, you can select specific variables to drop,
leaving others in place.  `rename()` is a relative of `select()` that allows
you to rename variables, while leaving all variables in place.


###Example
The sample dataset  includes the annual harvest, in tonnes, of a number of
commodities exported by two countries.  Type of trade provides no information
(it is all Export), so that variable can be dropped.  The names of all the
variables should be converted to lower-case, to match the OHI style guide.
See the figure below.
```
### Example 1:
harvest <- harvest %>%
  select(Country, Commodity, year, tonnes)
  ### Selects the named variables, and drops all others.  Useful to choose a
  ### subset of key variables from a complicated data set.

### Example 2 (same result as example 1):
harvest <- harvest %>%
  select(-Trade)
  ### Using the '-' drops 'Trade' column and leaves other variables intact.
  ### Useful if you would like to clear out temporary variables.

harvest <- harvest %>%
  rename(country = Country, commodity = Commodity)
  ### Drops no variables. Syntax: rename(new_var_name = old_var_name) w/o quotes.
```

Using the chain operator, we can string these two functions into one smooth,
easy-to-read flow:
```
harvest1 <- harvest %>%
  select(-Trade) %>%
  rename(country = Country, commodity = Commodity)
```
The `harvest` data is fed into `select()`, and the output is fed into
`rename()`. The final output of this complete flow is assigned to the new
variable `harvest1`.
![using select() and rename() to organize variables in a data set](https://docs.google.com/drawings/d/14uc-1Pgaosfh5kPllJRf_sRXbiGWL4RcBqASqAG5f2E/pub?w=898&h=286)

##dplyr::filter()
###Description
`filter()` allows you to select observations (rows) that match search criteria,
using values in specified variables (columns).  Drops all observations that do
not match the criteria.
* Use logical operators & and | to filter on multiple criteria simultaneously

###Example
```
harvest_vnm  <- harvest %>%
  filter(country == 'Vietnam')
  ### Single criterion filter: keeps only data with country matching 'Vietnam'.

h_vnm_recent <- harvest %>%
  filter(country == 'Vietnam' & year >= 2009)
  ### filter with multiple criteria: selects 'Vietnam' data from 2009 or later.
```

##dplyr::arrange()
###Description
`arrange()` sorts observations (rows) based upon a specified variable or list of
variables.  Does not actually change the data in any way, only the appearance.
Useful for inspecting your data after each processing step.

###Example
```
harvest_sorted <- harvest %>%
  arrange(country, commodity, year)
  ### Sorts commodity harvest values for each country, chronologically

harvest_sorted <- harvest %>%
  arrange(country, commodity, desc(year))
  ### Sorts harvest values by most recent year (descending order)
```

##dplyr::mutate()
###Description
`mutate()` is a powerful and useful tool for processing data.  You can add new
variables or modify existing variables, using all variety of functions to
perform operations on the dataset. `mutate()` works well with `group_by()` to
perform calculations and analysis at a group level rather than dataset level.

###Example
From the sample data set (see figure below), we would like to:
* Remove the 'X' from the 'year' values.
* Translate the text codes in 'tonnes' into numbers and NAs.  These codes are
specific to FAO's data reporting format: `...` is the same as `NA`, and `0 0`
means greater than zero, but less than half a tonne.
* Convert these text fields into numeric fields so they can be analyzed properly.

![Using mutate to alter data in a dataframe](https://docs.google.com/drawings/d/1LbBLBM7dI8TP8cCknT-VDqY-SW5ceBkfnkZUlftG8lo/pub?w=889&h=297)

```
library(stringr)   ### to access 'str_replace()' string functions

harvest1 <- harvest %>%
  mutate(  
    year   = str_replace(year,   fixed('X'),    ''),  # remove the 'X'
    tonnes = str_replace(tonnes, fixed('...'),  NA),  # replace '...' with 'NA'
    tonnes = str_replace(tonnes, fixed('0 0'), 0.1),  # replace '0 0' with '0.1'
    tonnes = ifelse(tonnes =='', NA, tonnes)) %>%
  mutate(
    tonnes = as.numeric(as.character(tonnes)),
    year   = as.integer(as.character(year)))
```
Notes:
* In this example, no new variables were added. Multiple variables can be
changed with one call to `mutate()`. Multiple modifications to 'tonnes' happen
sequentially, so order is important.
* The `as.numeric(as.character(...))` gets around the fact that these text
variables are stored as 'factor' class, rather than 'character' class.
`as.character()` forces them into character class, and then the `as.numeric()`
can convert the character strings to numeric where applicable. Similar for
`as.integer(...)`


##dplyr::summarize()
###Description
`summarize()` combines multiple values of a variable into a single summary
value. `summarize()` works well with `group_by()` - for grouped data, each
group will be summarized and reported separately. For ungrouped data, the
summary covers the entire dataset.
* `summarize()` compresses the dataset and drops individual observations. To
maintain individual observations, consider creating a summary variable using
`mutate()` instead.
* `NA` values can be problematic - use `na.rm=TRUE` or similar methods.

###Example
To determine the total harvest of each country, for each commodity:
```
h_summary <- harvest %>%
  group_by(country, commodity) %>%
  summarize(harvest_tot = sum(tonnes, na.rm = TRUE)) %>%
  ungroup()
```


##dplyr::group_by()
###Description
`group_by()` allows you to easily group a dataset by one or more variables/columns.  
By itself, it does nothing to change your data.  But once your dataset has
been sorted into useful groups, other `dplyr` functions will operate on each
group separately, rather than operating on the entire dataset.
* The function `groups(data)` reports back the current grouping status of
dataframe `data`.  
* `group_by()` alters the grouping, but does not alter the sort order.  
`arrange()` does not alter the current grouping - it will sort by groups
first, then sorts within each group.
* Multiple calls to `group_by()` will reset the groupings each time (by
  default), rather than adding additional layers of groups.
* Once you have finished with your operation at the group level, it is a good
practice to use the `ungroup()` function to remove the groupings, to avoid
unintended consequences due to forgotten `group_by()` calls.

###Example
If you want to find the total tonnage harvested for each commodity for each
country, you would want to group by country and by commodity, and then perform
a `sum()` function on the grouped data.  Two options presented here:
`summarize()` to collapse data to just the summary, and `mutate()` to add a
new column that includes the summary values.
```
h_tot_sum <- harvest %>%
  group_by(country, commodity) %>%
  summarize(harvest_tot = sum(tonnes, na.rm = TRUE))
    ### Summarize information by collapsing each group to a single summary value
    ### (total tonnage by commodity by country). Note ungroup() at end.

h_tot_mut <- harvest %>%
  group_by(country, commodity) %>%
  mutate(harvest_tot = sum(tonnes, na.rm = TRUE)) %>%
  arrange(country, commodity) %>%
  ungroup()
    ### Summarize information by creating a new variable to contain summary
    ### value; report value for every observation. Note ungroup() at end.
```
![group_by to find group-level information](https://docs.google.com/drawings/d/1enHrgXWhpHz3FsURncMI5UB8LKoXLvXFPAcU25pDOSc/pub?w=745&h=285)


##dplyr::join()
###Description
TBD
###Usage

###Arguments
