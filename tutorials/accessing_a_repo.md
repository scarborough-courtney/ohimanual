# Accessing GitHub repositories

We recommend that groups interested in conducting OHI assessments do so using GitHub, which is an online interface for version-control software called *git*. This will enable collaboration and transparency, and will provide access to the latest developments in the Toolbox software. To get started, follow the steps below. The OHI team will create a repository for your regional assessment.  

It is also possible to conduct a regional assessment without GitHub. We do not recommend this because it is more difficult for you to track progress and decisions, and for us to help or advise you. However, if this is preferable, see the instructions [here](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo_without_GitHub.md#accessing-repositories-without-github). We can always get your filesystem onto GitHub later. 
  

### What is needed?

> ![](./fig/overview_requirements.png)

### Install R and RStudio
Make sure you have the most current version of [R and RStudio](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/software_for_OHI/software_for_OHI.md). (Hint: type `sessionInfo()` into the R console to see which version of R you have installed, and update it if this is not the most recent version available on [CRAN](http://cran.r-project.org/)). 


### Create a GitHub account
GitHub is an online interface for *git*, and to use it you must [create a GitHub account](http://github.com). You will use this username and password when you install *git* and access your GitHub repository (next two steps below).


### Install *git* software
*git* is version-control software that you will need to install on your computer. 

[Download](http://git-scm.com/downloads) *git* and follow the install instructions. There are specific settings to select for [**Windows**](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/git_windows.md#git-on-windows) and [**Mac**](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/git_mac.md). 
  
  
### Set up your Git Identity
After downloading and installing, you will then need to set up your Git Identity, which identifies you with any changes made. You will use the command line: 

* **Mac**: launch the Terminal application (Applications > Utilities > Terminal)
* **Windows**: go to command line in Windows (Start > Run > cmd)  
  
  
Substitute your GitHub username instead of jdoe:
```
git config --global user.name jdoe
```
and then: substitute the email address you used to create your GitHub account: 
```
git config --global user.email johndoe@example.com
```

You can check settings with the following:

```
git config --list
```

Quit the Terminal after typing:
```
exit
```


### Clone your ohi-[assessment] repo to your computer
The OHI team will create a repository for your assessment once you provide your GitHub username: email your username to bbest@nceas.ucsb.edu or lowndes@nceas.ucsb.edu.

The repository will be stored on github.com and called `OHI-Science/ohi-[assessment]`: for example, `github.com/OHI-Science/ohi-israel`. Once your repository has been created, you can decide whether you will clone and work directly from that repository  or from a forked repository. There are benefits to both approaches: 

\*\* **Important:** Please create a folder called `github` in your root directory and save the repository there. This will make collaborating possible, particularly between Macs and Windows machines. The directory for the assessment `~/github/ohi-[assessment]` will therefore be:

+ on a Mac: `/Users/[User]/github/ohi-[assessment]`
+ on Windows: `C:\Users\[User]\Documents\github\ohi-[assessment]` 


* [Cloning](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo.md#cloning-options) and working directly on a repository is simplest: you can make changes on your local computer and push them directly to the online repository, as described regarding [GitHub-OHI repositories](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/github_repos.md#ohi-regional-assessments-and-github). You do not need to send pull requests; simply clone from `OHI-Science/ohi-[assessment]` and push/pull from there.
* [Forking](https://help.github.com/articles/fork-a-repo) a repository is best when you have multiple collaborators working on the same repository. This would allow you to commit changes to your local version, push commits up to github for offsite archiving, and eventually make a pull request to have those changes merged back to `ohi-science/ohi-[assessment]` while your collaborators do the same. This is a good way for someone who is not in the core team of the assessment to contribute comments.



#### Cloning options
There are several options to clone the ohi-[assessment] repository to your local machine:

1. The GitHub App for [Mac](https://mac.github.com/) or [Windows](https://windows.github.com/). After installing the GitHub App, click `Clone in Desktop` button from the online repository (see the *Getting started guide* on a [Mac](https://mac.github.com/help.html) and [Windows](https://windows.github.com/help.html))
2. [The command line](https://help.github.com/articles/fork-a-repo#keep-your-fork-synced).
3. [RStudio](https://github.com/OHI-Science/ohiprep/wiki/Setup#rstudio). This is best after the initial clone, since RStudio occassionally has trouble with setting the username / password.


## Working locally
All of the files available from the online server repository `https://github.com/OHI-Science/ohi-[assessment]` are now cloned on your local computer, in the location you specified. We recommend cloning the repository to this file path: `~/github/ohi-[assessment]`. 

> ![](./fig/filepath.png)

You will work on your computer to change the files in `~/github/ohi-[assessment]` to reflect the desired modifications your team has identified for your regional assessment. 
All changes within this folder will be tracked by GitHub when you [commit](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo.md#committing-locally) these changes, *even if you make these changes outside of R or RStudio*. This means that you can delete or paste files in the Mac Finder or Windows Explorer, edit `layers.csv` and `goals.csv` in Excel or a text editor, and modify `functions.r` in RStudio, and commit all these changes to GitHub to track the changes you make.

## Committing and pushing changes locally

Committing and pushing changes can be done using [RStudio](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo.md#using-rstudio-to-commit-changes) or the [Github App](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo.md#using-github-app-to-push-commits-to-github-ohi-assessment-repository).

### Using RStudio to commit and push changes to GitHub ohi-[assessment] repository
Launch your `ohi-[assessment]` project in RStudio by double-clicking the `ohi-[assessment].Rproj` file. From RStudio, Commit locally, associating a message with each set of changes.

> ![](./fig/RStudio_sk1.png)

When you modify or add a file, the file will appear in the 'Git' window. In the example below, the file `test.R` was created. 

1. Clicking the 'Staged' box and the 'Commit' button opens a new window where you can review changes. 
2. Type a commit message that is informative to the changes you've made. 
  - Note 1: there will often be multiple files 'staged' at the same time, and so the same commit message will be associated with all of the updated files. It is best to commit changes often with informative commit messages. 
  - Note 2: clicking on a staged file will identify additions and deletions within that file for your review
3. Click 'Commit' to commit the changes and the commit message
4. Pull any changes that have been made to the online repo. This is important to ensure there are no conflicts with updating the online repo. 
5. Push your committed changes to the online server at `github.com/OHI-Science/ohi-[assessment]`. Your changes are now visable online.
  
> ![](./fig/commit_sk.png)

### Using Github App to push commits to GitHub ohi-[assessment] repository
The Github App can also be used to commit and sync any changes made locally in the github folder. To do so, write a summary and description in the respective message bars in the Github App window, then click on commit and sync.

> ![](./fig/github_app.png)


## Keeping syncronized
Always pull before pushing commits. This is the best way to avoid merging errors due to other users in your group modifying files. 



#### More Information

* [presentation: Reproducible science with the Ocean Health Index](http://bbest.github.io/talks/2014-06_OHI-repro-sci/#1)
* [wiki: Using GitHub](https://github.com/OHI-Science/ohiprep/wiki/Using-GitHub)


