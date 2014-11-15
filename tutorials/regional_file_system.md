# The Ocean Health Index Toolbox Manual



### launchApp.command (for Mac), launchApp.bat (for Windows)
After the china2014 folder has been installed on the user<U+2019>s computer, further launches of the App can be done without the software program R. Instead, PC users can double-click the 'launchApp.bat' file and Mac users can double-click the <U+2018>launchApp.command<U+2019> file.  It is also possible to relaunch the App using the instructions above in <U+2018>Launching the Toolbox App<U+2019>.

*Note that on a Mac, launch_App.command is how to run the Toolbox App by double-clicking, and on a PC, launchApp.bat is the correct file to double-click.*



### layers.csv

![](./fig/layers_csv_registry.png)

 + **targets:** indicates how the data layer related goals or dimensions. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately
 + **layer:** is the identifying name of the data layer, which will be used in R scripts like functions.R and .csv files like pressures_matrix.csv and resilience_matrix.csv. This is also displayed on the Toolbox App under the drop-down menu when the variable type is <U+2018>input layer<U+2019>.
 + **name:** is a longer title of the data layer; this is displayed on the Toolbox App under the drop-down menu when the variable type is <U+2018>input layer<U+2019>.
 + **description:** is further description of the data layer; this is also displayed on the Toolbox App under the drop-down menu when the variable type is <U+2018>input layer<U+2019>.
 + **citation:** is for book-keeping purposes, indicating where to find further information about the layer from the supplemental information of the 2012 Nature publication.
 + **units:** importantly describes which field (column header) is the value from the data layer.
 + **filename:** is the .csv filename that holds the data layer information, and is located in the folder called <U+2018>layers<U+2019>.
 + **fld_value:** indicates the units along with the units column.
 
### layers folders

![](./fig/cc_acid_format_example.png)

### scenario.R
scenario.R is a script in R that identifies which data layers and models should be used to calculate OHI scores using the Toolbox App. This combination of data layers, models, and all supporting files are called a <U+2018>scenario<U+2019>. Currently, the default scenario is using Global 2013 assessment files, and is the folder within ohi-global, called eez2013. 

When conducting regional assessments, the best way to start is by copying the folder eez2013, renaming it to indicate the desired study area, and changing the working directory within the scenario.R file to identify that folder. The name of the folder should begin with <U+2018>scenario.<U+2019>, and indentify the year of study. For example, if conducting a California regional assessment, the folder could be named scenario.California2014, and has all the contents identical to the original eez2013 folder
