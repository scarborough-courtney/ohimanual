# Toolbox Troubleshooting

The Toolbox prints messages during its processing to help guide error checking and debugging. Here are a few troubleshooting tips. This section will be updated frequently; please share any problems that you encounter.  

## Error: RStudio won't push to GitHub

When pushing committed changes within RStudio, would return the error
* `error: unable to read askpass response from 'rpostback-askpass'`
* `fatal: could not read Username for 'https://github.com': Device not configured`
![Error screen window: 'error: unable to read askpass response'.](https://docs.google.com/drawings/d/1_yPk-eiJz-9P1VO0Z50bGQSTERM2aKcq6U_un3MlUO4/pub?w=819&h=107)

Here's how we fixed it: we updated `git.exe` to the latest version, 2.2.1, edited the search path to point to the new version, made sure the *git* credential.helper was configured to be able to access the OS X keychain, and pushed a test commit from terminal to store the username and password in the keychain, where it can be accessed from other apps like RStudio. Easy peasy!

1. To check your current version of `git.exe`, type this at the terminal command line:
    * `$ git --version` should return something like:
    * `git version 2.2.1` (check online to see if this is the latest version)
2. To update, go to http://git-scm.com/download/mac, download the latest *git* for OS X, install it.  
3. In terminal, type  `git --version` and verify that it reports the new version.  If it shows the new version, great!  Skip to Step 5.
    * Don't be sad if it doesn't!  If you still see the old version, the installer put the new version into a different directory, which has a lower priority in the search path, so now to update the search path.  The default Apple *git* seems to install the `git.exe` into `/usr/bin/` directory, this particular updater seems to install into `/usr/local/git/bin/` directory.  The search path needs to be updated to look for `git.exe` in the new directory first.
4. To change the search path, open up the paths file in `nano` editor using `sudo`:
    * `$ sudo nano /etc/paths`
    * At the top line of the paths file, add the directory for the updated *git*: `’/usr/local/git/bin’`(without the quotes) so it looks like the top line here:
![Terminal window showing where to set *git* filepaths.](https://docs.google.com/drawings/d/11KDJp52kCa-_n4jP97nGZqXc-cKNEvtV-R6M9_neMBg/pub?w=564&h=335)
    * Then hit `control-X` to exit, then `Y` in response to the save prompt.
5. Make sure your `git config` is up to date, including `credential.helper`:
    * `$ git config --global -l` should return something like:
    * `user.name="Casey O'Hara"`
    * `user.email=ohara@nceas.ucsb.edu`
        * see https://github.com/OHI-Science/ohiprep/wiki/Setup#git_identity for help on updating user.name and user.email
    * `credential.helper=osxkeychain`
        * (if you need to configure the credential helper: https://help.github.com/articles/caching-your-github-password-in-git/)
6. Now while you are in Terminal, it is important to sync with a repository to establish your security credentials. You must clone a repository and push a 'test' commit, and then once you are prompted for your username and password your information will get stored in the keychain. Here are the steps:
    * Change your working directory to your local github directory: `$ cd github`
       * (Tip: you can check if you're in the right folder by entering `pwd`, short for "print working directory"; or you could look at the line of code preceding the "$".)
    * Clone into a repository with a URL *for which you have permissions*. As an example, the following steps use a repository called 'ZAF' but you should use your own URL with a three-letter country code in place of 'ZAF':
       * `$ git clone  https://github.com/omalik/zaf.git`
    * Change your working directory to the folder you just created (here, 'ZAF'): `$ cd zaf`
    * Push a test commit to repository 'ZAF':
       * `$ touch test.md`
       * `$ git add test.md`
       * `$ git commit -m "testing"`
       * `$ git status`
       * `$ git push`
       * Check your status again: `$ git status`
         * (TIP: You can check your status with `$ git status` and you can use 'ls' to see if your new changes have registered in this repository.)
7. Now that *git* is updated and your username and password are set, make sure RStudio knows the location of the new `git.exe`.  In RStudio, select **Tools > Global Options…**, select the `Git/SVN`, and browse to the new `Git executable` (it should appear as `/usr/local/git/bin/git` if you updated your *git* version as above).
![Checking the options in RStudio for the git executable path.](https://docs.google.com/drawings/d/1Y3NrM8mvhRqsMrF2wkTjA0b_Rgfl_2nwU2J6C4p-VUw/pub?w=581&h=542)

Next time you push a commit from RStudio, it should remember the username and password from your test commit in Step 6, and you should be good to go.



## Loading RWorkspace on Restart

When you restart your R Session (**Session > Restart R** on a Mac), if you see that it is trying to load `ohicore`, it may give you an error:

  > ![](./fig/ohicore_load.png)

You do not want it to load `ohicore` or to save anything in your workspace. You will need to change the default setting from you **.Rproj** file. Steps to do this:

1. Go to Project Options, either in the pull-down menu or by double-clicking the .Rproj file:


  > ![](./fig/proj_op.png)

  > ![](./fig/proj_op2.png)

2. Change all options to **No:**

  > ![](./fig/proj_op3.png)

## Calculating Pressures...

### 'The following components for [goal] are not in the aggregation layer [layer]...'

Example:

> ![](./fig/troubleshoot_aggregation_layer.png)

  > ![](./fig/tblshoot_pressures.png)  

This error means you should update your pressures matrix because it expects there to be components that your region does not have.

### 'Error in matrix...'

Example:
  > ![](./fig/tblshoot_pressures.png)  

This error means there is an empty column in `pressures_matrix.csv`, and the Toolbox cannot handle empty columns.

## Calculating Resilience ...

### 'Error in match(x, table, nomatch = OL) : object id_num not found'

  > ![](./fig/error_resil_mtx.png)  

This error means you should check that there is at least one entry for each goal (for each row) in `resilience_matrix.csv`.
