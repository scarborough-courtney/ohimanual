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

tidyr
dplyr
stringr
functions
switch vs list?
ifelse?
apply functions?
