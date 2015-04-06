## Accessing GitHub Repositories

GitHub has an online interface and a desktop application for the version-control software called ** *git*. ** In addition to cloning your GitHub repository to your computer, you will need to download and install *git* software and the GitHub App (application), both of which are freely available.


### Create a GitHub account

Create a GitHub account at http://github.com. Choose a username and password. You will use this username and password when you install and set up *git* on your computer.


### Install *git* software

How you install *git* will depend on whether you are working on a Windows or Mac computer. It will also depend on your operating system version. If you have problems following these instructions, it is likely because your operating system requires a previous version of *git*. Previous versions are available from http://www.wandisco.com/git/download (you will need to provide your email address).

**For Windows:**

* Download *git* at http://git-scm.com/downloads and follow the install instructions.

* When running the Windows installer, use all default options except "Adjusting your PATH environment": instead, select "_**Run Git from the Windows Command Prompt**_". This will allow later compatibility with RStudio.  

  > ![](./fig/git_install_win_option.png)

**For Mac:**

* Download *git* at http://git-scm.com/downloads and follow the install instructions.
* Apple's [Xcode](https://developer.apple.com/xcode/) has a command line tools option during install which can override the preferred *git* command line tools. To ensure you are using the latest preferred version of *git*, you will need to launch  Terminal and type the following few lines of code:
* Access Terminal from the Applications folder: **Applications > Utilities > Terminal**. When you launch Terminal a window will appear with your computer’s name followed by a `$`. When you type, your commands will appear after the `$`.

Add access your 'bash profile' by typing:

```
pico ~/.bash_profile
```

You are now able to edit your ‘bash profile’. Type:

```
export PATH=/usr/local/git/bin:$PATH
```

Exit pico by typing:

> control-X  
y  
return/enter


Exit Terminal by typing:

```
exit
```

Finally, quit Terminal.

![](./fig/terminal_pico.png)


### Set up your Git Identity

After downloading and installing *git*, you will need to set up your **Git Identity**, which identifies you with your work. *Note*: if you have any problems with the following instructions, it is likely because of incompatibility between the version of your operating system and the version of git you downloaded in the previous section. In this case, find and download a compatible version at [www.wandisco.com/git/download](www.wandisco.com/git/download) and then follow the instructions below.

You will set up your GitHub identity using the command line specific to Windows or Mac:

* **Windows**: Start > Run > cmd
* **Mac**: Applications > Utilities > Terminal

In the window, you will see a cursor where you are able to type. Type the following and press return (or enter) at each step. Make sure all spaces and symbols are identical to the example below, including all spaces ( ) and dashes (-).

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

There are several options to clone your repository to your local machine. When getting started, we recommend using the GitHub application. This is freely available for download. Follow the default instructions for downloading and installing from the following:

* **Windows**: https://windows.github.com/.

* **Mac**: https://mac.github.com/.

### Create a folder called *github* on your computer

Because you will use GitHub to collaborate with your team or request support from the OHI team, it is important you save files in places where the file path that is universal and not specific to your computer. When team members save files in different places, this will create a lot of problems when collaborating, particularly between Macs and Windows machines.

**Please create a folder called github in your root directory**. The file path for this folder will be:

* **Windows**: `Users\[User]\Documents\github\`
* **Mac**: `Users/[User]/github/`

This folder can be identified by any computer as `~/github/`.  

> TIP: You can check the location of your `github` folder by right-clicking the folder icon and selecting 'Get Info' on a Mac or 'Properties' on Windows.

### Clone your repository to your computer


Clone a repository by clicking the 'Clone in Desktop' button on your online repository's homepage (https://github.com/OHI-Science/[assessment]):

> ![](https://docs.google.com/drawings/d/1sGEwp5wX0q3BJCy_J51FjS3km7fh7sx3k3jD9CBguBg/pub?w=384&h=288)

You will be asked where to save this repository: save it into the `github` folder you created. The file path for your assessment will therefore be:

* Windows: C: `\Users\[User]\Documents\github\[assessment] (example: C:\Users\johndoe\Documents\github\ecu)`
* on a Mac: `/Users/[User]/github/[assessment] (example: /Users/johndoe/github/ecu)`

The assessment can be identified by any computer as `~/github/[assessment]`.  

The entire folder will now be saved on your computer.


### Update permissions

You need to **email your username to ohi-science@nceas.ucsb.edu** for permission to upload modifications to your GitHub repository (you only need to do this once). Only team members who will be modifying files will need to do this; all other members can view online and download the repository without these permissions.  

### Work locally

You will then work locally on your own computer, modifying the files in the repository to reflect the desired modifications your team has identified for your assessment. Multiple users can work on the same repository at the same time, so there are steps involved to 'check in' your modifications so they can merge with the work of others without problems. GitHub has specific words for each of these steps. You have already successfully **cloned** an online repository to your local machine. After making modifications, you will **commit** these changes with a description before being able to sync back to the online repository. **Synching** involves both **pulling** any updates from the online repository before **pushing** committed changes back to the server.

> TIP: While you can edit files in the online GitHub repository, we do not recommend this. It is good practice to track changes through commits and syncing.

The example below illustrates GitHub's collaborative workflow with the `ohi-israel` repo owned by `OHI-Science`:

> > > ![](./fig/clone_push_pull.png)

**All changes within your local repository will be tracked by GitHub regardless of the software you use to make the changes**. This means that you can delete or paste files in the Mac Finder or Windows Explorer and edit *.csv* files in Excel or a text editor, and still sync these changes with the online repository. We recommend doing as much data manipulation as possible in a programming language like R, to maximize transparency and reproducibility. When modifying R scripts such as `functions.R`, you will need to work in R.

We recommend syncing with either the GitHub App or with RStudio. Both methods require you to commit your changes, before pulling any updates and pushing your modifications. The GitHub App combines the pulling and pushing into one step, called syncing. The following sections show you how to synchronize the repository on your computer with the repository online.

### Syncing

When you work on your computer, any edits you make to any files in your repo, using any program, will be tracked by *git*. You can use any of the above to commit and sync your changes back to GitHub. There are many options you can use to sync your edits on a repo with the online version.

* **GitHub App** [for Mac](https://mac.github.com/) and [for Windows](https://windows.github.com/)
* [**RStudio**](www.rstudio.com)
* **Command line**

If you are just modifying data *.csv* files, you probably only need to use the GitHub App. RStudio is convenient if you are working with *.R* files. Also, the command line can be used by those interested, and there are resources available online.

> TIP: Once you sync your repository, the updated information will be automatically available to the WebApps.

### Using the GitHub App to synchronize your repository

The GitHub App will track your modifications and can be used to commit and sync any changes made locally to your repository.  Once you are done working on the pertinent files and wish to commit and sync the changes to the online server on the Github server, open the GitHub App. The following example is with the `ecu` repository:

1. Make sure you select the correct repository, located on the left column of the GitHub App window (Step 1 in the figure).
2. Select the different files to which changes have been made (2a), and preview those changes on the right column of the GitHub App window (2b).
3. Once all the changes have been reviewed, write a summary/description in the respective message bars in the GitHub App window (3), then click on 'Commit' (3a) and then 'Sync' (3b) located on the top-right corner of the GitHub App window (Note: If a `Commit` button appears instead of `Commit & Sync`, you can either click `Commit` and then click the `Sync` in this way, or you can alternatively select *Edit* > *Automatically Sync After Committing* which will then allow you to click on 'Commit and Sync')

> ![Figure showing the layout of the GitHub App when syncing. Click on 'Commit' and then 'Sync' to push changes to your repository.](https://docs.google.com/drawings/d/1-I-x8ML1QUR13AEAibn5OUX-bbHpdSIw1l6-fcMkO3o/pub?w=1033&h=665)

Go online and check that your changes are now visible on GitHub online.

### Working with R and RStudio

**RStudio** is a program that can be used to synchronize any modifications you make to files in your assessment’s repository, and if you are working in R, it is convenient since you do not need to open the GitHub App.
If you do not already have this installed, install the latest version of R and RStudio (and if you do have these installed, check for updates: there are frequent updates to the R software, and the current version is identified on the website). Both R and RStudio are freely available to download.  

**R**: Download the current version of R appropriate for your operating system at http://cran.r-project.org/ and follow the instructions to install it on your computer. If updating, compare the available version on their website with what you already have on your computer by typing sessionInfo() into your R console.  

**RStudio**: Download the current version of RStudio software at www.rstudio.com. RStudio is not updated as often as R, but it is good to check for updates regularly.  Note that in this case, you should follow the default install instructions.

If you are working on a Mac, you will need to tell RStudio to use the proper version of Git by doing the updating the preferences for 'Git executable':

**RStudio > Preferences... > Git/SVN > Git executable: /usr/local/git/bin/git**

### Using RStudio to synchronize your repository

RStudio can sync files with GitHub directly, and can be used instead of the GitHub App. Like the GitHub App, it will capture the changes made to any files within the repository, no matter which software was used to modify them. The advantage for using RStudio to sync instead of the GitHub App is if you are working with R scripts already. In RStudio, you sync by first pulling and then pushing (separately); in the GitHub App these two functions are done together.

Launch your project in RStudio by double-clicking the `.Rproj` file in the assessment folder on your local hard drive.

> ![](https://docs.google.com/drawings/d/11F2lbB1S56ccZK5CbCxga4SEiRoE6E0-3QtZO99p37A/pub?w=384&h=288)

When you modify or add a file, the file will appear in the 'Git' window once it has been saved. In the example below, the file `test.R` was created.

1. Clicking the 'Staged' box and the 'Commit' button opens a new window where you can review changes.
2. Type a commit message that is informative to the changes you've made.
  - Note 1: there will often be multiple files 'staged' at the same time, and so the same commit message will be associated with all of the updated files. It is best to commit changes often with informative commit messages.
  - Note 2: clicking on a staged file will identify additions and deletions within that file for your review
3. Click 'Commit' to commit the changes and the commit message
4. Pull any changes that have been made to the online repository. This is important to ensure there are no conflicts with updating the online repository.
5. Push your committed changes to the online repository. Your changes are now visible online.

> TIP: If you aren't seeing your changes in the 'Git' window, try saving the file again.

![Figure showing RStudio when sycing. After first staging your changes, click the 'commit' button to open a new window where you can enter a 'commit message' and then pull and push new changes. ](https://docs.google.com/drawings/d/1M9-87q0RZ_lPD8QEL3DIpoPgyh-w2rKPoF-5IFWFJfo/pub?w=1027&h=687)


> TIP: Another way to sync and open the project is to click on 'New Project' in the upper-right-hand corner of Rstudio,  then choose 'Version Control', and then you can paste the URL of the desired repository. This URL can be found on on your online repository's homepage.

### Install the latest version of R and RStudio

Make sure you have the most current version of R and RStudio. Download **R** at http://cran.r-project.org/ and install on your computer. If you already have R installed, check the website for updates. There are frequent updates to the R software, and the current version is identified on the website. Compare what is available from their website with what you already have on your computer by typing `sessionInfo()` into your R console. (This will also identify packages you have installed).  

While not required, we highly recommend working with **RStudio**, which is an interface that makes working with R much easier, and it also interfaces with GitHub so you are able to synchronize without using the GitHub App. RStudio does not get updated as often as R does, but it is good to check for updates regularly.
