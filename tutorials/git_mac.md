# *git* on Mac

Apple's [Xcode](https://developer.apple.com/xcode/) has a command line tools option during install which can override the preferred Git command line tools. To ensure you are using the latest preferred version:

- **RStudio**
  
  Update Preferences > Git/SVN > Git executable to `/usr/local/git/bin/git`
  
  ![](https://raw.githubusercontent.com/OHI-Science/ohiprep/master/wiki/img/rstudio_prefs_git.png)

- **Terminal**
  
  Add the following line to your bash profile by running `pico ~/.bash_profile`:

  ```
  export PATH=/usr/local/git/bin:$PATH
  ```
