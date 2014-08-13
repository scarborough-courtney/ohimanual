# Step_4 File System



## File System
Within the ohi-global folder is a folder called eez2013 which contains all the data, functions and other files required to calculate the Ocean Health Index. The default data and models are from the global 2013 analysis. To calculate the Index for a different region or with new data or models, the user will modify the files within this folder.

### eez2013
Each of the elements (files and folders) within ohi-global/eez2013 are critical to the proper functioning of the Toolbox App.

![alt text](Toolbox10.png)

*OHI Toolbox file systems on a Mac. Note that on a Mac, launch_App.command is how to run the Toolbox App by double-clicking, and on a PC, launchApp.bat is the correct file to double-click.*

### launchApp.command (for Mac), launchApp.bat (for Windows)
After the eez2013 folder has been installed on the user’s computer, further launches of the App can be done without the software program R. Instead, PC users can double-click the 'launchApp.bat' file and Mac users can double-click the ‘launchApp.command’ file.  It is also possible to relaunch the App using the instructions above in ‘Launching the Toolbox App’.

### launchApp_code.R
The App can also be launched through R by running the code in lauchApp_code.R. 

### layers.csv
layers.csv is the registry that manages all data to be called by the Toolbox App. 

![alt text](Toolbox11.png)

The first eight columns (columns A-H) contain information inputted by the user; other columns are generated later by the Toolbox App as it confirms data formatting and content. Each row of information represents a specific data layer. Columns A-H have the following information:

 + **targets:** indicates how the data layer related goals or dimensions. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately
 + **layer:** is the identifying name of the data layer, which will be used in R scripts like functions.R and .csv files like pressures_matrix.csv and resilience_matrix.csv. This is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **name:** is a longer title of the data layer; this is displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **description:** is further description of the data layer; this is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **citation:** is for book-keeping purposes, indicating where to find further information about the layer from the supplemental information of the 2012 Nature publication.
 + **units:** importantly describes which field (column header) is the value from the data layer.
 + **filename:** is the .csv filename that holds the data layer information, and is located in the folder called ‘layers’.
 + **fld_value:** indicates the units along with the units column.
 
### layers folders
