## Accessing repositories with GitHub

### Overview

We recommend that groups interested in conducting OHI assessments do so using GitHub, which is an online interface for version-control software called *git*. GitHub has powerful versioning capabilities, which allows changes to be archived and tracked by each user. This is incredibly useful to not only to document what work has been done, but how it differs from work done in the past, and who is responsible for the changes. Conducting an OHI regional assessment using GitHub will therefore enable collaboration and transparency, and will provide access to the latest developments in the Toolbox software. 

It is also possible to conduct a regional assessment without GitHub. We do not recommend this because it is more difficult for you to track progress and decisions, and for us to help or advise you. However, if this is preferable, see the instructions in the 'Accessing repositories without GitHub' section below. You can always switch back to GitHub later on. 

In addition to cloning your GitHub repository to your computere, you will need to download and install some free software in order to have syncing capabilities between your local version of the repository and the online version. Syncing will require **git** software and the **GitHub** application. Once installed, you will be able to work with data layers (*.csv* files) using any software program you prefer (Excel, R, Matlab, text editors), and the *GitHub* application will enable you to syncronize your updates to the online repository. We highly recommend processing data (*.csv* files) in a programming language (particularly R), to aid in reproducibility and transparency. When editing goal models, you will need to install **R**, and **RStudio** (optional, but highly recommended). *RStudio* has the added benefit of being able to directly sync with the online GitHub repository, which means you would not have to use the *GitHub* app. 

To get started on an OHI assessments using GitHub, follow the steps below. 

> ![](./fig/overview_requirements_1.png)

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
  
  >   To exit pico, type `control-X`, then `y` and then return. Type `exit` before quitting Terminal.  
  
  >   ![](./fig/terminal_pico.png)
  

**For Windows:**

  > Download *git* at http://git-scm.com/downloads and follow the install instructions. 

  > When running the Windows installer, use all default options except "Adjusting your PATH environment": instead, select "_**Run Git from the Windows Command Prompt**_". This will allow compatibility with RStudio.  
  
  > ![](./fig/git_install_win_option.png)
  
### Set up your Git Identity

After downloading and installing *git*, you will need to set up your **Git Identity**, which identifies you with your work. You will use the command line: 

* **Mac**: launch the Terminal application (Applications > Utilities > Terminal)
* **Windows**: go to command line in Windows (Start > Run > cmd)  
  
You will see cursor where you are able to type (the mouse may not work here). Type the following and press return at each step. Make sure all spaces and symbols are identical to the example below.

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

### Install the GitHub application

There are several options to clone the repository to your local machine. We recommend using the GitHub application. See [http://github.com] for instructions on how to clone using the command line or [RStudio support](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN) if you are interested in other options.

> **GitHub App**

**(a)** For Mac (freely available at https://mac.github.com/):

Once the the GitHub App is installed and opened, the following page will appear:

> ![](./fig/GitHub_App_Cloning_1.png)

Follow the instructions for cloning on a Mac (copied from: https://mac.github.com/help.html)

> ![](./fig/GitHub_App_Cloning_2.png)


**(b)** For Windows:

Follow the instructions for cloning on Windows (copied from: https://windows.github.com/help.html)

> ![](./fig/creating_local_clone_windows.png)

### Cloning your repository to your computer


Clone a repository by clicking the 'Clone in Desktop' button on your online repository's homepage (https://github.com/ohi-science/[assessment]):

> ![](https://docs.google.com/drawings/d/1sGEwp5wX0q3BJCy_J51FjS3km7fh7sx3k3jD9CBguBg/pub?w=384&h=288)

You will be asked where to save this repository. The placement of the repository is critical for easy collaboration. 

Please create a folder called `github` in your root directory and save the repository there. If teammembers save files in different places, those different filepaths can create a lot of problems when collaborating, particularly between Macs and Windows machines. The directory for an assessment (`~/github/[assessment]`) will therefore be:

+ on a Mac: `/Users/[User]/github/[assessment]` (example: `/Users/[User]/github/ecu`)
+ on Windows: `C:\Users\[User]\Documents\github\[assessment]` (example: `C:\Users\[User]\Documents\github\ecu`)

The entire folder will now be saved on your computer. You are able to explore and modify these files as needed. 


### Updating permissions

You will need permission to sync any changes you make back to the repository. OHI-Science is the 'owner' of all Ocean Health Index repositories stored on GitHub, and individual users contribute to these repositories when they have permission. To obtain editing privileges, please provide your GitHub username in an email to lowndes@nceas.ucsb.edu. You will need to do this one time only.

### Working locally

You will then work locally on your own computer, modifying the files in the repository to reflect the desired modifications your team has identified for your regional assessment. Multiple users can work on the same repository at the same time, so there are steps involved to 'check in' your modifications so they can merge with the work of others without problems. GitHub has specific words for each of these steps. You have already successfully **cloned** an online repository to your local machine. After making modifications, you will **commit** these changes with a description before being able to sync back to the online repository. **Synching** involves both **pulling** any updates from the online repository before **pushing** committed changes back to the server.

The example below illustrates GitHub's collaborative workflow with the `ohi-israel` repo owned by `OHI-Science`:

> > > ![](./fig/clone_push_pull.png)

**All changes within your local repository will be tracked by GitHub regardless of the software you use to make the changes**. This means that you can delete or paste files in the Mac Finder or Windows Explorer and edit *.csv* files in Excel or a text editor, and still sync these changes with the online repository. We recommend doing as much data manipulation as possible in a programming language like R, to maximize transparency and reproducibility. When modifying R scripts such as `functions.r`, you will need to work in R. 

We recommend syncing with either the GitHub app or with RStudio. Both methods require you to commit your changes, before pulling any updates and pushing your modifications. The GitHub app combines the pulling and pushing into one step, called syncing. 


### Using GitHub App to syncronize your repository

The GitHub App will track your modifications and can be used to commit and sync any changes made locally to your repository.  Once you are done working on the pertinent files and wish to commit and sync the changes to the online server on the Github server, open the Github App. The following example is with the ohi-china repository:

1. Make sure you select the correct repository, located on the left column of the github app window.
2. Select the different files to which changes have been made (2a), and preview those changes on the right column of the github app window (2b).
3. Once all the changes have been reviewed, write a summary/description in the respective message bars in the Github App window, then click on commit and sync (Note: If a `Commit` button appears instead of the `Commit & Sync` button, you can either click `Commit` and then click the `Sync` button located on the top-right corner of the githup app window, or you can alternatively click the `+` button next to the `Commit` button, and then click the the `Commit & Sync` button that appears).

> ![](./fig/github_app_notes.png)

Your changes should now visible on Github online.


### Using RStudio to syncronize your repository

RStudio (for installation, see below) can sync files with GitHub directly, and can be used instead of the GitHub app. Like the GitHub app, it will capture the changes made to any files within the repository, no matter which software was used to modify them. The advantage for using RStudio to sync instead of the GitHub app is when you are working with R scripts already. In RStudio, you sync by pulling and pushing separately; in the GitHub app these two are done together.

Launch your project in RStudio by double-clicking the `[assessment].Rproj` file. From RStudio, Commit locally, associating a message with each set of changes.

> ![](https://docs.google.com/drawings/d/11F2lbB1S56ccZK5CbCxga4SEiRoE6E0-3QtZO99p37A/pub?w=384&h=288)

When you modify or add a file, the file will appear in the 'Git' window. In the example below, the file `test.R` was created. 

1. Clicking the 'Staged' box and the 'Commit' button opens a new window where you can review changes. 
2. Type a commit message that is informative to the changes you've made. 
  - Note 1: there will often be multiple files 'staged' at the same time, and so the same commit message will be associated with all of the updated files. It is best to commit changes often with informative commit messages. 
  - Note 2: clicking on a staged file will identify additions and deletions within that file for your review
3. Click 'Commit' to commit the changes and the commit message
4. Pull any changes that have been made to the online repository. This is important to ensure there are no conflicts with updating the online repository. 
5. Push your committed changes to the online repository. Your changes are now visible online.
  
> ![](./fig/commit_sk.png)


### Install the latest version of R and RStudio

Make sure you have the most current version of R and RStudio. Download **R** at http://cran.r-project.org/ and install on your computer. If you already have R installed, check the website for updates. There are frequent updates to the R software, and the current version is identified on the websited. Compare what is available from their wesite with what you already have on your computer by typing `sessionInfo()` into your R console. (This will also identify packages you have installed).  

While not required, we highly recommend working with **RStudio**, which is an interface that makes working with R much easier, and it also interfaces with GitHub so you are able to syncronize without using the GitHub app. RStudio does not get updated as often as R does, but it is good to check for updates regularly. 
