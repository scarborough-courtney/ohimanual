# *git* on Mac

[Download](http://git-scm.com/downloads) and install *git* for Mac.  

Apple's [Xcode](https://developer.apple.com/xcode/) has a command line tools option during install which can override the preferred Git command line tools. To ensure you are using the latest preferred version, do the following things in RStudio and in Terminal:

- **RStudio**
  Within RStudio, update your preferences for 'Git executable':
  
  > RStudio > Preferences... > Git/SVN > Git executable: `/usr/local/git/bin/git`
  
 ![](./fig/rstudio_prefs_git.png)

- **Terminal**
  
  From Terminal, add a line to your 'bash profile' (launch Terminal from Applications > Utilities > Terminal).
  
  First type:  `pico ~/.bash_profile`
  
  Add this line: 

  ```
  export PATH=/usr/local/git/bin:$PATH
  ```
  
  Type `control-X` to exit pico; type `exit` before quitting Terminal.  
  
  ![](./fig/terminal_pico.png)
  
After installing, follow the instructions for [setting up your Git Identity](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo.md#set-up-your-git-identity)

