## Accessing repositories with GitHub

### Overview

We recommend that groups interested in conducting OHI assessments do so using GitHub, which is an online interface for version-control software called *git*. GitHub has powerful versioning capabilities, which allows changes to be archived and tracked by each user. This is incredibly useful to not only to document what work has been done, but how it differs from work done in the past, and who is responsible for the changes: it provides a record of all changes made. Conducting an OHI regional assessment using GitHub will therefore enable collaboration and transparency, and will provide access to the latest developments in the Toolbox software. 

It is also possible to conduct a regional assessment without GitHub. We do not recommend this because it is more difficult for you to track progress and decisions, and for us to help or advise you. However, if this is preferable, see the instructions in the 'Accessing repositories without GitHub' section below. We can always get your filesystem onto GitHub later. 

To get started on an OHI assessments using GitHub, follow the steps below:

Software required for regional assessments with version control:

> ![](./fig/overview_requirements_1.png)

### Install R and RStudio

Make sure you have the most current version of R and RStudio. (Hint: type `sessionInfo()` into the R console to see which version of R you have installed, and update it if this is not the most recent version available on CRAN at http://cran.r-project.org/). 


### Create a GitHub account

GitHub is an online interface for *git*, and to use it you must create a GitHub account at http://github.com. You will use this username and password when you install *git* and access your GitHub repository (next two steps below).


### Install *git* software

*git* is version-control software that you will need to install on your computer. Note that there are specific settings to select for **Windows** and **Mac**. 


**For Mac:**

  > Download *git* at http://git-scm.com/downloads and follow the install instructions. 

  > Apple's [Xcode](https://developer.apple.com/xcode/) has a command line tools option during install which can override the preferred Git command line tools. To ensure you are using the latest preferred version, do the following things in *RStudio* and in *Terminal*:

  > - *RStudio*

  >   Within RStudio, update your preferences for 'Git executable':
  
  > RStudio > Preferences... > Git/SVN > Git executable: `/usr/local/git/bin/git`
  
  >  ![](./fig/rstudio_prefs_git.png)

  > - *Terminal*
  
  >   From Terminal, add a line to your 'bash profile' (launch Terminal from Applications > Utilities > Terminal).
  
  >   First type:  `pico ~/.bash_profile`
  
  >   Add this line: 

  >   ```
  >   export PATH=/usr/local/git/bin:$PATH
  >   ```
  
  >   Type `control-X`, then `y` and then `return` keys to exit pico; type `exit` before quitting Terminal.  
  
  >   ![](./fig/terminal_pico.png)
  

**For Windows:**

  > Download *git* at http://git-scm.com/downloads and follow the install instructions. 

  > When running the Windows installer, use all default options except "Adjusting your PATH environment": instead, select "_**Run Git from the Windows Command Prompt**_". This will allow compatibility with RStudio.  
  
  > ![](./fig/git_install_win_option.png)
  
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


### Clone your  repo to your computer

OHI-Science is the 'owner' of the OHI repositories stored on GitHub at https://github.com/OHI-Science, and individual users contribute to these repositories when they have permission. The OHI team will create a repository for your assessment once you provide your GitHub username: email your username to bbest@nceas.ucsb.edu or lowndes@nceas.ucsb.edu.

The repository will be backed up and stored on github.com and you will also have a local version on your computer.

\*\* **Important:** Please create a folder called `github` in your root directory and save the repository there. This will make collaborating possible, particularly between Macs and Windows machines. The directory for the assessment `~/github/[assessment]` will therefore be:

+ on a Mac: `/Users/[User]/github/[assessment]`
+ on Windows: `C:\Users\[User]\Documents\github\[assessment]` 

Downloading a repository from GitHub is called **cloning** and there are multiple ways to do it. Cloning allows you to make changes on your local computer and sync them to the online repository. 


**Cloning options:**

There are several options to clone the repository to your local machine:

> 1. **GitHub App**

> 2. **Command line** (Windows) or **Terminal** (Mac)

> 3. **RStudio**

**1. The GitHub App** 

**(a)** For Mac (freely available at https://mac.github.com/):

Once the the GitHub App is installed and opened, the following page will appear:

> ![](./fig/GitHub_App_Cloning_1.png)

Follow the instructions for cloning on a Mac (copied from: https://mac.github.com/help.html)

> ![](./fig/GitHub_App_Cloning_2.png)


**(b)** For Windows:

Follow the instructions for cloning on Windows (copied from: https://windows.github.com/help.html)

> ![](./fig/creating_local_clone_windows.png)


**2. The Command line (Windows) or Terminal (Mac)**

Below is an example for a repository called 'Spoon-Knife':

> ![](./fig/creating_local_clone.png)

(Instructions copied from: https://help.github.com/articles/fork-a-repo#keep-your-fork-synced)


**3. RStudio**

This is best after the initial clone, since RStudio occassionally has trouble with setting the username / password. Open RStudio, and follow the instructions below copied from: https://github.com/OHI-Science/ohiprep/wiki/Setup#rstudio.

> ![](./fig/creating_local_clone_R.png)


### Working locally
All of the files available from the online server repository `https://github.com/OHI-Science/[assessment]` are now cloned on your local computer, in the location you specified. We recommend cloning the repository to this file path: `~/github/[assessment]`. 

> ![](./fig/filepath.png)

You will then work locally on your own computer, changing the cloned files in `~/github/[assessment]` to reflect the desired modifications your team has identified for your regional assessment. Because there can be multiple users working on the same repo, there are specific steps involved, and GitHub has specific words for each of these steps, including **cloning** a repo from the server to a local repository, **committing** any changes made with a description, **pulling** any updates from the server's repo, and finally **pushing** committed changes back to the server.

All changes within this folder will be tracked by GitHub when you commit and sync these changes back to the repo on the GitHub server, *even if you make these changes outside of R or RStudio*. This means that you can delete or paste files in the Mac Finder or Windows Explorer, edit `layers.csv` and `goals.csv` in Excel or a text editor, and modify `functions.r` in RStudio, and commit all these changes to GitHub to track the changes you make.

This example illustrates GitHub's collaborative workflow with the `ohi-israel` repo owned by `OHI-Science`:

> > > ![](./fig/clone_push_pull.png)


### Committing and pushing changes locally

Committing and pushing changes can be done using either RStudio or the GitHub App.

**Using RStudio to commit and push changes to GitHub repository**

Launch your project in RStudio by double-clicking the `[assessment].Rproj` file. From RStudio, Commit locally, associating a message with each set of changes.

> ![](./fig/RStudio_sk1.png)

When you modify or add a file, the file will appear in the 'Git' window. In the example below, the file `test.R` was created. 

1. Clicking the 'Staged' box and the 'Commit' button opens a new window where you can review changes. 
2. Type a commit message that is informative to the changes you've made. 
  - Note 1: there will often be multiple files 'staged' at the same time, and so the same commit message will be associated with all of the updated files. It is best to commit changes often with informative commit messages. 
  - Note 2: clicking on a staged file will identify additions and deletions within that file for your review
3. Click 'Commit' to commit the changes and the commit message
4. Pull any changes that have been made to the online repo. This is important to ensure there are no conflicts with updating the online repo. 
5. Push your committed changes to the online server at `github.com/OHI-Science/[assessment]`. Your changes are now visable online.
  
> ![](./fig/commit_sk.png)

**Using GitHub App to push commits to GitHub repository**

The GitHub App is freely available for download for both Mac (mac.github.com) and PC (windows.github.com), and can be used instead of RStudio to commit and sync any changes made locally in the github folder. Changes made directly to layer files in the local OHI-china repository for example will be automatically tracked by the Github App. Once you are done working on the pertinent files and wish to commit and sync the changes to the online server on the Github server, open the Github App:

1. Make sure you select the correct repository, in this case OHI-china, located on the left column of the github app window.
2. The user can then select the different files to which changes have been made (2a), and preview those changes on the right column of the github app window (2b).
3. Once all the changes have been reviewed, write a summary/description in the respective message bars in the Github App window, then click on commit and sync.

> ![](./fig/github_app_notes.png)

Your changes should now visable on Github online.

### Keeping syncronized
Always pull before pushing commits. This is the best way to avoid merging errors due to other users in your group modifying files. 


### More Information

The following is a diagram describing three ways in which files can be editted on GitHub. The third column refers to the 'clone', 'push' and 'commit' model described above:

|     | `github.com/ohi-science/[repo]` (web)  | `github.com/[user]/[repo]` (web) |   `~/github/[repo]` (local) |
| --- |------------------------  | -------------------------- | -------------- |
| -> |                          | -> [fork](help.github.com/articles/fork-a-repo)            | -> [clone](help.github.com/articles/fetching-a-remote)    |
| <- |  [merge pull request](help.github.com/articles/merging-a-pull-request) {admin} <-                           | <- [pull request](Fork & Pull Model) | <- [push](github.com/OHI-Science/ohiprep/wiki/Setup#rstudio), <-> [commit](github.com/OHI-Science/ohiprep/wiki/Setup#rstudio) |

where:
* `[repo]` is one of OHI-Science repositories: ohicore, ohiprep, etc.
* `[user]` is your GitHub username

Note however that users can also change files directly in the repository on the GitHub website (column 1), by clicking on the button indicated by the red arrow:

> ![](./fig/web_edit.png)


Alternatively, the user can create a fork, or copy of a repository (column 2) to freely experiment with changes without affecting the original project:

> ![](./fig/fork_repository.png)

See intructions at: https://help.github.com/articles/fork-a-repo/#keep-your-fork-synced.

For more information about GitHub, see:

* 'GitHub flow in the browser' at: https://help.github.com/articles/github-flow-in-the-browser

* A presentation about 'Reproducible science with the Ocean Health Index' can be found at: http://bbest.github.io/talks/2014-06_OHI-repro-sci/#1

* A wiki about 'Using GitHub' can be found at: https://github.com/OHI-Science/ohiprep/wiki/Using-GitHub)
