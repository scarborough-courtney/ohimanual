# Intro to GitHub + OHI Toolbox

This document is more of an outline than detailed information.

# Intro to GitHub

By now you have github accounts and are becoming familiar with the Issues repository. Here is some basic background on GitHub capabilities.

GitHub has synching capabilities like Dropbox, but with added functionality since multiple users (with the correct permission) can edit documents and so GitHub manages all the merging required, and saves all versions with editing users identified and modifications attributed. There are many ways to investigate past versions, all of which can be reinstated at any time. [Mel]

## Structure

* OHI-Science is an **organization**
* cia or ohi-webapps are examples of **repositories ('repos')**

Most repos we work with in OHI-Science are freely available; some repos are private (issues, ohidev). You have permission to edit any of these within OHI-Science.

### Vocabulary

* **clone** ~ download to your computer from online version with synching capabilities enabled
* **commit** ~ message associated with your changes at a point in time
* **pull**  ~ sync a repo on your computer with online version
* **push**  ~ sync the online repo with your version, only possible after committing


**sync = pull + commit + push**

![](/Users/jstewart/github/ohimanual/tutorials/fig/clone_push_pull.png)

## Syncing options

When you work on your computer, any edits you make to any files in your repo, using any program, will be tracked by Git. You can use any of the above to commit and sync your changes back to GitHub. There are many options you can use to sync your edits on a repo with the online version.

* **GitHub App** [for Mac](https://mac.github.com/) and [for Windows](https://windows.github.com/)
* [**RStudio**](www.rstudio.com)
* **Terminal**

When you work on your computer, any edits you make to any files in your repo, using any program, will be tracked by Git. You can use any of the above to commit and sync your changes back to GitHub.  

* Ex 1: create a new file in Excel, save as .csv in your repo, commit, pull, push using GitHub App.  
* Ex 3: modify R script using RStudio, commit, pull, push from RStudio.
* Ex 2: open .md file, edit in Atom, commit, pull, push using  Terminal.

```
(type the following commands after the $ in your Terminal window)

cd github/ohimanual
ls
git status
git add test.md
git status
git commit -m 'testing'
git status
git push
```

# Intro to OHI Toolbox

The **OHI Toolbox** is an ecosystem of data, scripts, and structure used to facilitate groups with the highly collaborative OHI assessment process at any scale. We interact with it through GitHub, through a few repositories. Data are fed to the Toolbox as *.csv* files, and all scripts are in *R*.

Any assessment relies on the `ohicore` repository. But there is also an additional repository specific to the assessment, which contains all the prepped data and functions, pressures + resilience matices, and other goodies. So,
>  **OHI Toolbox = assessment-repo + ohicore**.

Data need to be prepped for that assessment repository, so additional repos exist for that.


## OHI-Science's repos for global assessments

* `ohicore`: all underlying functionality of calculating OHI scores. Good to know about, but you probably won't be interacting with/editing this anytime soon.
* `ohiprep`: most tabular data are prepped for the Toolbox with R scripts in this repo. Spatial data is prepped off of GitHub, on NCEAS servers (primarily Neptune).
* `ohi-global`: the global assessment repository. All prepped data, functions, matrices, config files. Some things to note now:
    + **scenario folders**: eg *eez2012, eez2013, eez2014*, coming soon: *eez2015*
      + **layers.csv**
      + **layers folder**
      + **conf/functions.r**
      + **conf/pressures_matrix.csv**
      + **conf/resilience_matrix.csv**


## WebApps
WebApps are an interactive way to explore these data layers. The global assessment currently has an old iteration of the [WebApp](https://ohi-science.shinyapps.io/global/), but it is still very useful.


To help independent groups with their OHI+ assessments, there are assessment repositories and WebApps for (nearly) every coastal nation. Example: [ohi-science.org/ecu](https://ohi-science.org/ecu). You can find others by searching the (currently unadvertised) [ohi-science.org/subcountry](https://ohi-science.org/ecu) listing.


## Programs to install

* GitHub app
* RStudio
* [Atom](https://atom.io/) (awesome text editor with markdown rendering), made by the GitHub guys and gals.

## Resources

* Super awesome chapter in Hadley's book: [Git and GitHub by Hadley Wickham](http://r-pkgs.had.co.nz/git.html)
* Important info about GitHub + OHI in the ['Setup' wiki entry by Ben Best](https://github.com/OHI-Science/ohiprep/wiki/Setup)
* [Learn R with Swirl](http://swirlstats.com/)
* [Learn R with NCEAS](https://www.nceas.ucsb.edu/scicomp/software/r)
* Resolving GitHub conflicts on YouTube https://www.youtube.com/watch?v=zz7NuSCH6II
