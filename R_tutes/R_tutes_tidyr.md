#`tidyr` functions
'Tidy' up your messy data to make it easier to work with.  The 'tidy tools'
functions in the `dplyr` package work best with tidy data. Install it:

From [Hadley Wickham's *Tidy Data* paper:](http://vita.had.co.nz/papers/tidy-data.html)
>It is often said that 80% of data analysis is spent on the cleaning and preparing data. And it's not just a first step, but it must be repeated many over the course of analysis as new problems come to light or new data is collected. To get a handle on the problem, this paper focuses on a small, but important, aspect of data cleaning that I call data tidying: structuring datasets to facilitate analysis.

From [RStudio's introduction to `tidyr`](http://blog.rstudio.org/2014/07/22/introducing-tidyr/):

>The two most important properties of tidy data are:
* Each column is a variable.
* Each row is an observation.

>Arranging your data in this way makes it easier to work with because you have a
consistent way of referring to variables (as column names) and observations
(as row indices). When you use tidy data and tidy tools, you spend less time
worrying about how to feed the output from one function into the input of
another, and more time answering your questions about the data.

`gather()` is arguably the most useful function in `tidyr`, and is explained in more detail below.  
`spread()` and `separate()` are other useful functions in `tidyr`.

Other 'tidyr' references:
* [Hadley Wickham's *Tidy Data* paper:](http://vita.had.co.nz/papers/tidy-data.html)
Download the pre-print version for the whys and hows of tidy data.
* [Cran tidy data vignette:](http://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)
An informal and code heavy version of Hadley's full *Tidy Data* paper.
* [RStudio Blogs: Introducing tidyr:](http://blog.rstudio.org/2014/07/22/introducing-tidyr/) 
Basics and philosophy of `tidyr`
* [swirl tutorial package:](http://swirlstats.com/students.html) A tutorial package built directly into R.  Section 2: 'Getting and Cleaning Data' runs you through `dplyr` and `tidyr` basics
* [R data wrangling cheat sheet:](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)
A quick reference guide to `tidyr` and `dplyr` functions

##tidyr::gather()
###Description
`gather()` takes data organized in rows and collapses them into a column format (a
key column and a value column), duplicating all other columns as needed. Use
`gather()` when your data is organized in "wide" format, in which some of your
variables are in row form, rather than column form.  Another `tidyr` function, `spread()`, is more or less the reverse of `gather()`, to reformat long data
into wide data.

Note: `gather()` essentially replaces `melt()` in `plyr` package.

###Usage
* `data_long <- gather(data, key, value, ...)` standard format
* `data_long <- data %>% gather(key, value, ...)` recommended: this takes advantage of `%>%` operator, allowing for easy chaining of multiple functions.

###Arguments
* `data`: your wide-formatted data frame
* `key`: the name of the new column into which the original column headers will be gathered.
* `value`: the name of the new column into which the original column values will be gathered.
* `...`	: Specification of original columns to be gathered. Use bare variable
names (no quotes).
    * Select all variables between columns x and z with `x:z` (useful if the number of data columns is known)
    * exclude y with `-y` (useful if the number of data columns is not known, or can change)
* See 'help' for `gather()` for other useful arguments.

###Example
![wide data to long data using gather() and spread()](https://docs.google.com/drawings/d/1VaZdLWK0NwAkov4sEytZLRpOUAndb3_NZOA4-n1HNIo/pub?w=948&h=499)
In this example, the original wide data is transformed into long data using the command:
* `data_long <- data_wide %>% gather(year, tonnes, -Country, -Commodity, -Trade)`.

The command will recast the column headings into a new variable, 'year', and gather the data from all columns except 'Country', 'Commodity', and 'Trade' into a single column titled 'tonnes'.  

The same results could be achieved with the command:
* `data_long <- data_wide %>% gather(year, tonnes, X2007:X2011)`  

Now that the data is tidy, we can use the `dplyr` package functions to manipulate the data.
