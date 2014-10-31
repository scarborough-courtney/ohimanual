## Accessing repositories with GitHub

### Overview

We recommend that groups interested in conducting OHI assessments do so using GitHub, which is an online interface for version-control software called *git*. GitHub has powerful versioning capabilities, which allows changes to be archived and tracked by each user. This is incredibly useful to not only to document what work has been done, but how it differs from work done in the past, and who is responsible for the changes: it provides a record of all changes made. GitHub enables easy collaboration with others, including the OHI team.

Conducting an OHI regional assessment using GitHub will therefore enable collaboration and transparency, and will provide access to the latest developments in the Toolbox software. It is also possible to conduct a regional assessment without GitHub. We do not recommend this because it is more difficult for you to track progress and decisions, and for us to help or advise you. However, if this is preferable, see the instructions [here](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo_without_github.md#accessing-repositories-without-github). We can always get your filesystem onto GitHub later. 
  

> ![software required for regional assessments with version control](./fig/overview_requirements_1.png)

### Setting up

To get started, follow the steps below:

**1. Install R and RStudio**

Make sure you have the most current version of [R and RStudio](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/software_for_OHI/software_for_OHI.md). (Hint: type `sessionInfo()` into the R console to see which version of R you have installed, and update it if this is not the most recent version available on [CRAN](http://cran.r-project.org/)). 


**2. Create a GitHub account**

GitHub is an online interface for *git*, and to use it you must [create a GitHub account](http://github.com). You will use this username and password when you install *git* and access your GitHub repository (next two steps below).


**3. Install *git* software**

*git* is version-control software that you will need to install on your computer. 

[Download](http://git-scm.com/downloads) *git* and follow the install instructions. There are specific settings to select for [**Windows**](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/git_windows.md#git-on-windows) and [**Mac**](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/git_mac.md). 
  
  
**4. Set up your Git Identity**

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


**5. Clone your ohi-[assessment] repo to your computer**

[OHI-Science](https://github.com/OHI-Science) is the 'owner' of the OHI repositories stored on GitHub, and individual users contribute to these repositories when they have permission. The OHI team will create a repository for your assessment once you provide your GitHub username: email your username to bbest@nceas.ucsb.edu or lowndes@nceas.ucsb.edu.

The repository will be backed up and stored on github.com and you will also have a local version on your computer.

\*\* **Important:** Please create a folder called `github` in your root directory and save the repository there. This will make collaborating possible, particularly between Macs and Windows machines. The directory for the assessment `~/github/ohi-[assessment]` will therefore be:

+ on a Mac: `/Users/[User]/github/ohi-[assessment]`
+ on Windows: `C:\Users\[User]\Documents\github\ohi-[assessment]` 

Downloading a repository from GitHub is called **cloning** and there are multiple ways to do it. Cloning allows you to make changes on your local computer and sync them to the online repository, described elsewhere ([GitHub-OHI repositories](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/install_tbx_regional_assessment.md#ohi-regional-assessments-and-github)). 


**Cloning options:**

There are several options to clone the ohi-[assessment] repository to your local machine:

1) The [GitHub App for Mac](https://mac.github.com/) or [Windows](https://windows.github.com/). After installing the GitHub App, log in with your username and passord. Then follow instructions for cloning (see the *Getting started guide* on a [Mac](https://mac.github.com/help.html) and [Windows](https://windows.github.com/help.html))  

2) [The command line (Windows) or Terminal (Mac)](https://help.github.com/articles/fork-a-repo#keep-your-fork-synced). For example, clone `ohi-israel` into the `~/github` folder:
```
cd ~/github
git clone https://github.com/OHI-Science/ohi-israel.git
cd ohi-israel
```
3) [RStudio](https://github.com/OHI-Science/ohiprep/wiki/Setup#rstudio). This is best after the initial clone, since RStudio occassionally has trouble with setting the username / password. 


### Working locally
All of the files available from the online server repository `https://github.com/OHI-Science/ohi-[assessment]` are now cloned on your local computer, in the location you specified. We recommend cloning the repository to this file path: `~/github/ohi-[assessment]`. 

> ![](./fig/filepath.png)

You will then work locally on your own computer, changing the cloned files in `~/github/ohi-[assessment]` to reflect the desired modifications your team has identified for your regional assessment. Because there can be multiple users working on the same repo, there are specific steps involved, and GitHub has specific words for each of these steps, including **cloning** a repo from the server to a local repository, **committing** any changes made with a description, **pulling** any updates from the server's repo, and finally **pushing** committed changes back to the server.

All changes within this folder will be tracked by GitHub when you commit and sync these changes back to the repo on the GitHub server, *even if you make these changes outside of R or RStudio*. This means that you can delete or paste files in the Mac Finder or Windows Explorer, edit `layers.csv` and `goals.csv` in Excel or a text editor, and modify `functions.r` in RStudio, and commit all these changes to GitHub to track the changes you make.


### Committing and pushing changes locally

Committing and pushing changes can be done using either RStudio or the GitHub App.

**Using RStudio to commit and push changes to GitHub ohi-[assessment] repository**

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

**Using GitHub App to push commits to GitHub ohi-[assessment] repository**

The GitHub App is freely available for download for both Mac (mac.github.com) and PC (windows.github.com), and can be used instead of RStudio to commit and sync any changes made locally in the github folder. To do so, write a summary and description in the respective message bars in the Github App window, then click on commit and sync.

> ![](./fig/github_app_notes.png)


### Keeping syncronized
Always pull before pushing commits. This is the best way to avoid merging errors due to other users in your group modifying files. 


#### More Information

* [presentation: Reproducible science with the Ocean Health Index](http://bbest.github.io/talks/2014-06_OHI-repro-sci/#1)
* [wiki: Using GitHub](https://github.com/OHI-Science/ohiprep/wiki/Using-GitHub)

#### GitHub flow with _Fork & Pull Model_

|     | `github.com/ohi-science/[repo]` (web)  | `github.com/[user]/[repo]` (web) |   `~/github/[repo]` (local) |
| --- |------------------------  | -------------------------- | -------------- |
| -> |                          | -> [fork](help.github.com/articles/fork-a-repo)            | -> [clone](help.github.com/articles/fetching-a-remote)    |
| <- |  [merge pull request](help.github.com/articles/merging-a-pull-request) {admin} <-                           | <- [pull request](Fork & Pull Model) | <- [push](github.com/OHI-Science/ohiprep/wiki/Setup#rstudio), <-> [commit](github.com/OHI-Science/ohiprep/wiki/Setup#rstudio) |

where:
* `[repo]` is one of OHI-Science repositories: ohicore, ohiprep, etc.
* `[user]` is your GitHub username

see also:
* [GitHub flow in the browser](https://help.github.com/articles/github-flow-in-the-browser)
