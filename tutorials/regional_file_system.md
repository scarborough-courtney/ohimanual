# The Ocean Health Index Toolbox Manual

### launchApp.command (for Mac), launchApp.bat (for Windows)
After the china2014 folder has been installed on the user<U+2019>s computer, further launches of the App can be done without the software program R. Instead, PC users can double-click the 'launchApp.bat' file and Mac users can double-click the <U+2018>launchApp.command<U+2019> file.  It is also possible to relaunch the App using the instructions above in <U+2018>Launching the Toolbox App<U+2019>.

*Note that on a Mac, launch_App.command is how to run the Toolbox App by double-clicking, and on a PC, launchApp.bat is the correct file to double-click.*

### layers.csv

 + **citation:** is for book-keeping purposes, indicating where to find further information about the layer from the supplemental information of the 2012 Nature publication.

### scenario.R
scenario.R is a script in R that identifies which data layers and models should be used to calculate OHI scores using the Toolbox App. This combination of data layers, models, and all supporting files are called a <U+2018>scenario<U+2019>. Currently, the default scenario is using Global 2013 assessment files, and is the folder within ohi-global, called eez2013. 

When conducting regional assessments, the best way to start is by copying the folder eez2013, renaming it to indicate the desired study area, and changing the working directory within the scenario.R file to identify that folder. The name of the folder should begin with <U+2018>scenario.<U+2019>, and indentify the year of study. For example, if conducting a California regional assessment, the folder could be named scenario.California2014, and has all the contents identical to the original eez2013 folder
