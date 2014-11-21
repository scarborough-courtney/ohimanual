# Installing the Toolbox for a Regional Assessment 

## Getting started
OHI Toolbox software is written in R, and work with simple *.csv* files to store data and registeries. Template files and scripts are kept together in a folder, a **GitHub repository**, online. GitHub is an open-source development platform that enables easy collaboration and versioning (see: http://en.wikipedia.org/wiki/GitHub).

At this point, you should already be familiar with your repository's filesystem (see Section 4.5 above). To efficiently modify input data files, set parameters and modify goals, you will need to download your repository onto your computer. In GitHub vocabulary, this is called to 'clone' your repository. This will put a complete copy of the repository on your computer, enabling you to work offline.

We recommend establishing a GitHub user account, which will allow you to syncronize your modifications with the online repository. Your website (accessed from [ohi-science.org](http://ohi-science.org)) will also display these modifications visually. Using GitHub faciliates collaboration within your team and also allows us to provide support when you need it. However, it is possible to work independently without GitHub (after the initial download), although you will not be able to synchronize your work with your website, and we cannot offer much support in this case.

**Requirements**: an Internet connection for the initial Toolbox App installation and continued access if syncing with GitHub (highly recommended); proficiency with data management and the coding language **R**; proficiency in spatial software such as ArcGIS (potentially, depending on the regional assessment strategy).

> **Set up:**
> 
>  * Install R and RStudio
>  * Clone regional assessment repository on Desktop
> 
> Detailed instructions follow for users who want to either:
> 
>  * work with GitHub (See: Accessing repository with GitHub section), or 
>  * work without GitHub (See: Accessing repository without GitHub section). 


## GitHub repository architecture

GitHub stores all data files and scripts for your assessment in a repository (a folder). Different copies or complements to these folders, called *branches* can also exist, which aid with versioning and drafting. Your repository has four branches, two of which are displayed on your website (e.g. ohi-science.org/ecu):

1. **draft** branch is for editing. This is the default branch and the main working area where existing scenario data files can be edited and new scenarios added.

1. **published** branch is a vetted copy of the draft branch, not for direct editing. This branch is only updated by automatic calculation of scores if:

    1. no errors occur during the calculation of scores in the draft branch, and

    2. publishing is turned on. During the draft editing and testing phases of development, it is typically desirable to turn this off. (Details below.)

1. **gh-pages** branch is this website. The results sections of the site (regions, layers, goals, scores per branch/scenario) are overwritten into this repository after automatic calculation of scores. The rest of the site can be manually altered.

1. **app** branch is the interactive layer and map viewer application. The user interface and server-side processing use the [Shiny](http://shiny.rstudio.com/) R package and are deployed online via [ShinyApps.io](https://www.shinyapps.io/) to your website. Once deployed, the App pulls updates from the data branches (draft and published) every time a new connection is initiated (ie browser refreshes).


