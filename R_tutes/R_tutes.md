Things to include in an OHI R guide
Why style? Hadley: "Good style is important because while your code only has one
author, it’ll usually have multiple readers. This is especially true when you’re
writing code with others. In that case, it’s a good idea to agree on a common
style up-front. Since no style is strictly better than another, working with
others may mean that you’ll need to sacrifice some preferred aspects of your style."
Readable code:
* easier for others to debug
* easier for others to update

Check out Hadley's style guide: style guide: http://r-pkgs.had.co.nz/style.html
How many of these suggestions are second-nature to you? how many are you guilty of breaking?
Note that these are guidelines, not rules; the code will work.  Code unto others
as you would have them code unto you.

var names, filenames, function names, etc
* lower_case_with_underscores or camelCase (not periods.in.between)
* brief but intuitive

chapter headings, comments, etc.

Comment clearly for your own purposes, and for others.
Take advantage of R Studio headings functionality:
* if a comment line ends with four or more -, =, or # signs, R Studio recognizes it as a heading.
* Text within the comment becomes the heading name.


best practices
- use <- to assign values to variables
- spacing
- as you go into a new file, try to help it out
- break code into functions

Writing functions
http://nicercode.github.io/guides/functions/
What makes a good function:
* It’s short
* Performs a single operation
* Uses intuitive names



Function-by-function
* syntax, incl %>%
* examples, incl diagrams
* other similar functions (esp ones that new function replaces)
* best practices, e.g. group_by then ungroup
* common problems?

#**tidyr** functions
'Tidy' up your messy data to make it easier to work with.  The 'tidy tools'
functions in the `dplyr` package work best with tidy data.

From [RStudio's introduction to `tidyr`](http://blog.rstudio.org/2014/07/22/introducing-tidyr/):

>The two most important properties of tidy data are:
* Each column is a variable.
* Each row is an observation.

>Arranging your data in this way makes it easier to work with because you have a
consistent way of referring to variables (as column names) and observations
(as row indices). When you use tidy data and tidy tools, you spend less time
worrying about how to feed the output from one function into the input of
another, and more time answering your questions about the data.

`gather()` is arguably the most useful function in **tidyr**, and is explained in more detail below.  `spread()` and `separate()` can also be useful - so read more about **tidyr** here: http://blog.rstudio.org/2014/07/22/introducing-tidyr/

##Gather()
###Description
`gather()` takes multiple columns and collapses them into key-value pairs, duplicating all other columns as needed. Use `gather()` when your data is organized in "wide" format, so that some of your variables are in row form, rather than column form.  Another **tidyr** function, `spread()`, is more or less the reverse of `gather()`, to reformat long data into wide data.
![wide data to long data using gather() and spread()](https://docs.google.com/drawings/d/1VaZdLWK0NwAkov4sEytZLRpOUAndb3_NZOA4-n1HNIo/pub?w=948&h=499)

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
In the example above, the wide data is formatted into long data using the command:
* `data_long <- data_wide %>% gather(year, tonnes, -Country, -Commodity, -Trade)`.

The command will recast the column headings into a new variable, 'year', and gather the data from all columns except 'Country', 'Commodity', and 'Trade' into a single column titled 'tonnes'.  

The same results could be achieved with the command:
* `data_long <- data_wide %>% gather(year, tonnes, X2007:X2011)`  

To change the format of the year, we will use 'dplyr' functions.





#dplyr functions:
* philosophy and background: http://blog.rstudio.org/2014/01/17/introducing-dplyr/
* group_by/ungroup
* summarize/summarise
* mutate
* filter
* select/rename
* arrange
* join
