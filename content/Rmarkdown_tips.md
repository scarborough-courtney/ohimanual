# Rmarkdown Tips
# testing

## Rmarkdown
[Rmarkdown](http://rmarkdown.rstudio.com/) is a simple formatting tool for creating HTML, PDF, presentations, and Microsoft Word documents, and it can render R code within those formats. See this [great post](https://github.com/bbest/rmarkdown-example#writing-with-rmarkdown) as an introduction to its capabilities.  
  
Here are a few examples of documents written in Rmarkdown, rendered in [.html](file:///Library/Frameworks/R.framework/Versions/3.1/Resources/library/dplyr/doc/introduction.html) and [.pdf](http://cran.r-project.org/web/packages/dplyr/dplyr.pdf) formats. Also, to see how Rmarkdown files can render code, look at the comparison of three OHI scenario goals.csv files in its [raw .rmd](https://github.com/OHI-Science/ohi-global/blob/master/table_goal_inputs.rmd) format and [rendered .md](https://github.com/OHI-Science/ohi-global/blob/master/table_goal_inputs.md) format.  


## Getting started
With the Ocean Health Index, we use Rmarkdown documents together with GitHub. To create or edit Rmarkdown content, you can do so with R and RStudio, or directly online on the GitHub interface.

### RMarkdown with GitHub

With an GitHub account and the correct permissions, you can [provide edits](https://help.github.com/articles/editing-files-in-another-user-s-repository) to files within github.com. This will actually create a copy of the file (that GitHub calls a 'fork') that you can edit and then suggest changes to the owner of the file. 

Because GitHub cannot render `.Rmd` files, editing those files directly is difficult because you cannot immediately see your suggested edits. You are able to see rendered edits you make to `.md` files, but this will cause a problem because the next time the `.Rmd` file is rendered, it will overwrite the edits to `.md`. The temporary solution is to make edits to the `.md` file, so you can see the rendered changes, propose the file change, and then look at the changes side-by-side while you make those same changes to the `.Rmd` file. 

Select the most recent change:

   > > > > > ![](./fig/github_editing2_sk.png)  
  
Make edits side-by-side:
  
   > > > > > ![](./fig/github_editing.png)  
  
Your edits will be reviewed and merged into the documents by the file owner.

### RMarkdown with RStudio

To get started writing in Rmarkdown, first, [update R and RStudio](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo_with_github.md#getting-started).  
Then, in RStudio, install `Rmarkdown` (which also installs the required `pandoc`) with the pull-down menu or by pasting this into the console:

```
install.packages('rmarkdown')
```
  
Then, open a new [.Rmd document](https://github.com/bbest/rmarkdown-example#process). Instead of a blank document, it will give a template that you can **Knit** to see how it renders. Try it.  

   > > > > > ![](./fig/rstudio_knit-button.png)  

#### Editing

To add your own content, follow instructions about [syntax](http://rmarkdown.rstudio.com/authoring_basics.html). When you click the **Knit** button, a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. Rendering the `.Rmd` as both `.html` and `.md` documents is a good way to go. The `.html` file will show the rendered content, and is a good way to test that your syntax is correct. The `.md` file needs something something more to render its format--something that GitHub can provide. So when the `md` file is on GitHub, it will be very easy to read. If you're reading this tutorial on GitHub, you're reading the `.md` file. 
  
Assign the output in the following way (spacing matters). Note that there are additional options you can specify (see the *Formats* tab of the [Rmarkdown page](http://rmarkdown.rstudio.com/) for more details.  
  
```
---
title: "Rmarkdown output formats"
output: 
  html_document:
    fig_caption: yes
    keep_md: yes
    number_sections: no
    toc: yes
  md_document:
    variant: markdown_github
---
```  
  
### Asking for help  
Rmarkdown is a powerful tool that can create publication-worthy documents, and has a lot of built-in options. However, like any new language or software, it takes a bit of time to learn how to use it. If there is something you are trying to do, Google your problem because it is likely that someone else has had the same question, and that someone else has had the answer. For example, here are a few solutions to problems you may have: 

1. [continuing numbered lists](http://stackoverflow.com/questions/18088955/markdown-continue-numbered-list)
2. [saving a `.md` file with a different name and location than the `.Rmd` file](http://stackoverflow.com/questions/19989325/knit-rmd-file-to-md-and-save-the-md-file-one-level-up-with-a-different-name)

