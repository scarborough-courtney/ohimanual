#Things to include in an OHI R guide
###Code unto others as you would have them code unto you.
Why style? Hadley:
>Good style is important because while your code only has one
author, it’ll usually have multiple readers. This is especially true when you’re
writing code with others. In that case, it’s a good idea to agree on a common
style up-front. Since no style is strictly better than another, working with
others may mean that you’ll need to sacrifice some preferred aspects of your style.

Since OHI values an open-source mindset, our code should be not just available, but legible to others.  For OHI+, we expect people to modify code to implement new goal models, and we may need to provide support in developing and debugging their code.

Readable code is:
* easier for others to debug
* easier for others to update or modify

Check out Hadley's [style guide: ](http://r-pkgs.had.co.nz/style.html)
* How many of these suggestions are second-nature to you? how many are you guilty of breaking?
* Note that these are guidelines, not rules; non-stylish code can still work.  

##OHI best practices?:
* var names, filenames, function names, etc
    * lower_case_with_underscores or camelCase (not periods.in.between)
    * brief but intuitive
* Comment clearly for your own purposes, and for others.
* Take advantage of R Studio section labels functionality:
    * if a comment line ends with four or more -, =, or # signs, R Studio recognizes it as a new section.
    * Text within the comment becomes the section name, accessible in drop-down.
* use <- to assign values to variables (not necessary, but preferred)
* spacing and formatting for legibility
    * spacing between math operators and after commas
    * indents to indicate nested or sequential code
    * break sequences or long function calls into separate lines logically -
    e.g. one function call per line
* use functions to add intuitive names to chunks of code
* Use 'tidy data' practices - take advantage of `tidyr`, `dplyr`
    * clean up unused columns using `select(-colname)`
* if you are working on an older script, try to update it according to these best practices

##Writing functions
http://nicercode.github.io/guides/functions/
Why write functions?
* name a chunk of code for easier reading
* easily reuse a chunk of code
What makes a good function:
* It’s short
* Performs a single operation
* Uses intuitive names


##tidyr, dplyr, stringr: Function-by-function
* syntax, incl %>%
* examples, incl diagrams
* other similar functions (esp ones that new function replaces)
* best practices, e.g. group_by then ungroup
* common problems?

##Misc helpful or common or confusing functions
* switch vs list?
* ifelse?
* apply functions?
