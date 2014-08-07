# Rmarkdown Tips

### Rmarkdown
[Rmarkdown](http://rmarkdown.rstudio.com/) is 'a simple formatting syntax for authoring HTML, PDF, and MS Word documents' and can render R code within those formats. Here are a few examples of documents written in Rmarkdown, rendered in [.html](file:///Library/Frameworks/R.framework/Versions/3.1/Resources/library/dplyr/doc/introduction.html) and [.pdf](http://cran.r-project.org/web/packages/dplyr/dplyr.pdf) formats. See this [great post](https://github.com/bbest/rmarkdown-example#writing-with-rmarkdown) about its capabilities and how to use it.

To get started writing in Rmarkdown, [update R and RStudio](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo.md#getting-started). Then, in RStudio, install Rmarkdown and pandoc by pasting this into the console:

```
install.packages('rmarkdown')
install.package('pandoc')
```

Then, open a new [.Rmd document](https://github.com/bbest/rmarkdown-example#process): instead of a blank document, it will give a template that you can **Knit** to see how it renders. To add your own content, follow instructions about [syntax](http://rmarkdown.rstudio.com/authoring_basics.html). When you click the **Knit** button, a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. 
