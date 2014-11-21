# Installing the Toolbox for a Regional Assessment 

## Getting started
The Ocean Health Index (OHI) Toolbox is software written in R that can be used to conduct regional assessments using the OHI framework. Ocean Health Index assessments have a specific organization of data files, registry files, and R scripts that work together to do calculations and present the final scores graphically. The files and scripts for any given assessment are packaged together in a folder called a **repository** ('repos'), and stored online through GitHub, an open-source development platform that enables easy collaboration with  versioning capabilities (See: http://en.wikipedia.org/wiki/GitHub).

It is possible to conduct a regional assessment by downloading a template repository from GitHub. We recommend having a GitHub user account and syncing with the online repository: this faciliates collaboration within your team but also allows us to provide support when you need it. However, it is possible to work independently without GitHub (after the initial download), although we cannot offer much support in this case.

**Requirements**: an Internet connection for the initial Toolbox App installation and continued access if syncing with GitHub (highly recommended); proficiency with data management and the coding language **R**; proficiency in spatial software such as ArcGIS (potentially, depending on the regional assessment strategy).

> **1. Set up:**
> 
>  * Install R and RStudio
>  * Clone regional assessment repository on Desktop
> 
> Detailed instructions for step **1** are provided below for users who want to either:
> 
>  * work with GitHub (See: Accessing repository with GitHub section), or 
>  * work without GitHub (See: Accessing repository without GitHub section). 
> 
> **2. Become familiar with the OHI Toolbox File System**


Once the user has completed steps 1 and 2, they will then be able to make changes to the Toolbox to calculate regional scores (See: 'Using the Toolbox for a Regional assessment' section below).

## GitHub repository architecture

GitHub stores all data files and scripts for your assessment in a repository (a folder). Different copies or complements to these folders, called *branches* can also exist, which aid with versioning and drafting. Your repository has four branches, two of which are displayed on your website (e.g. ohi-science.org/ecu):

1. **draft** branch is for editing. This is the default branch and the main working area where existing scenario data files can be edited and new scenarios added.

1. **published** branch is a vetted copy of the draft branch, not for direct editing. This branch is only updated by automatic calculation of scores if:

    1. no errors occur during the calculation of scores in the draft branch, and

    2. publishing is turned on. During the draft editing and testing phases of development, it is typically desirable to turn this off. (Details below.)

1. **gh-pages** branch is this website. The results sections of the site (regions, layers, goals, scores per branch/scenario) are overwritten into this repository after automatic calculation of scores. The rest of the site can be manually altered.

1. **app** branch is the interactive layer and map viewer application. The user interface and server-side processing use the [Shiny](http://shiny.rstudio.com/) R package and are deployed online via [ShinyApps.io](https://www.shinyapps.io/) to your website. Once deployed, the App pulls updates from the data branches (draft and published) every time a new connection is initiated (ie browser refreshes).


