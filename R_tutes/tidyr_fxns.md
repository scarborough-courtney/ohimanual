###Gather()

####Description

Gather takes multiple columns and collapses into key-value pairs, duplicating
all other columns as needed. You use `gather()` when you notice that you have
columns that are not variables. Use `gather()` when your data is organized in "wide" format, so that each line
contains multiple observations - not all columns are strictly variables (example)
Note: Replaces `melt()` in `plyr` package.

####Usage

`data_long <- gather(data_wide, key, value, ..., na.rm = FALSE, convert = FALSE)`
`data_long <- data_wide %>% gather(key, value, ..., na.rm = FALSE, convert = FALSE)`

####Arguments

* `data`: your data frame

* `key`: the name of the new column into which the original column headers will be gathered.
* `value`: the name of the new column into which the original column values will be gathered.

* `...``	: Specification of original columns to be gathered. Use bare variable
names (no quotes).
* Select all variables between columns x and z with `x:z` (useful if the number of data columns is known)
* exclude y with `-y` (useful if the number of data columns is not known, or can change)


###Spread()



###Separate()
