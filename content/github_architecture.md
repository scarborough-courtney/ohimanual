## GitHub repository architecture

GitHub stores all data files and scripts for your assessment in a repository (a folder). Different copies or complements to these folders, called *branches* can also exist, which aid with versioning and drafting. Your repository has four branches, two of which are displayed on your website (e.g., ohi-science.org/ecu):

1. **draft** branch is for editing. This is the default branch and the main working area where existing scenario data files can be edited and new scenarios added.

1. **published** branch is a vetted copy of the draft branch, not for direct editing. This branch is only updated by automatic calculation of scores if:

    1. no errors occur during the calculation of scores in the draft branch, and

    2. publishing is turned on. During the draft editing and testing phases of development, it is typically desirable to turn this off.

1. **gh-pages** branch is this website. The results sections of the site (regions, layers, goals, scores per branch/scenario) are overwritten into this repository after automatic calculation of scores. The rest of the site can be manually altered.

1. **app** branch is the interactive layer and map viewer application. The user interface and server-side processing use the [Shiny](http://shiny.rstudio.com/) R package and are deployed online via [ShinyApps.io](https://www.shinyapps.io/) to your website. Once deployed, the WebApp pulls updates from the data branches (draft and published) every time a new connection is initiated (i.e., browser refreshes).

> TIP: When looking at files on GitHub, note that the timestamps are associated with the 'commit' time rather than the 'push' time.
