# The Ocean Health Index Toolbox Manual

## Regional Evaluation File System
Within the github folder is a sub-folder called ohi-[region-name] which is the repository that was created [previously](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo_with_github.md#create-your-ohi-assessment-repo) by the OHI team. For example, the OHI regional assessment for China will have a repository called ohi-china from which the regional evaluation will be conducted.

![](./fig/assessment_location.png)

>> *OHI Toolbox regional file systems on a Mac.*

In this case, ohi-china is the **assessment**, and china2014 is the **scenario** that contains all the data, functions and other files required to calculate the Ocean Health Index. The default data and models are from the global 2013 analysis. To calculate the Index for a different region or with new data or models, the user will modify the files within this folder.

The ohi-china assessment will subsequently be used to illustrate how to perform a regional evaluation. 

### china2014
Each of the elements (files and folders) within github/ohi-china/china2014 are critical to the proper functioning of the Toolbox App (See file and folder descriptions below)

![](./fig/china2014_descr.png)


### launchApp.command (for Mac), launchApp.bat (for Windows)
After the china2014 folder has been installed on the user<U+2019>s computer, further launches of the App can be done without the software program R. Instead, PC users can double-click the 'launchApp.bat' file and Mac users can double-click the <U+2018>launchApp.command<U+2019> file.  It is also possible to relaunch the App using the instructions above in <U+2018>Launching the Toolbox App<U+2019>.

*Note that on a Mac, launch_App.command is how to run the Toolbox App by double-clicking, and on a PC, launchApp.bat is the correct file to double-click.*

### launchApp_code.R
The App can also be launched through R by running the code in lauchApp_code.R. 

### layers.csv
layers.csv is the registry that manages all data to be called by the Toolbox App. 

![](./fig/layers_csv_registry.png)

The first eight columns (columns A-H) contain information inputted by the user; other columns are generated later by the Toolbox App as it confirms data formatting and content. Each row of information represents a specific data layer. Columns A-H have the following information:

 + **targets:** indicates how the data layer related goals or dimensions. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately
 + **layer:** is the identifying name of the data layer, which will be used in R scripts like functions.R and .csv files like pressures_matrix.csv and resilience_matrix.csv. This is also displayed on the Toolbox App under the drop-down menu when the variable type is <U+2018>input layer<U+2019>.
 + **name:** is a longer title of the data layer; this is displayed on the Toolbox App under the drop-down menu when the variable type is <U+2018>input layer<U+2019>.
 + **description:** is further description of the data layer; this is also displayed on the Toolbox App under the drop-down menu when the variable type is <U+2018>input layer<U+2019>.
 + **citation:** is for book-keeping purposes, indicating where to find further information about the layer from the supplemental information of the 2012 Nature publication.
 + **units:** importantly describes which field (column header) is the value from the data layer.
 + **filename:** is the .csv filename that holds the data layer information, and is located in the folder called <U+2018>layers<U+2019>.
 + **fld_value:** indicates the units along with the units column.
 
### layers folders
The layers folder contains every data layer as an individual .csv file. The names of the .csv files within the layers folder correspond to those listed in the filename field of the layers.csv file described above.

![](./fig/layers_location.png)

Note that each file has a specific format that the Toolbox expects and requires in order to run properly. Comma separated value files (.csv files) can be opened with text editor software, or will open by default by Microsoft Excel (if it is installed). Below is an example of proper data formatting using the file cc_acid_2013.csv. Note the unique region identifier (rgn_id) with a single associated pressure_score, and that the data are presented in <U+2018>long format<U+2019> with minimal columns. Please see [formatting_data_for_toolbox](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/formatting_data_for_toolbox.xlsx) for further details and instructions on data formatting requirements.

![](./fig/cc_acid_format_example.png)

### scenario.R
scenario.R is a script in R that identifies which data layers and models should be used to calculate OHI scores using the Toolbox App. This combination of data layers, models, and all supporting files are called a <U+2018>scenario<U+2019>. Currently, the default scenario is using Global 2013 assessment files, and is the folder within ohi-global, called eez2013. 

When conducting regional assessments, the best way to start is by copying the folder eez2013, renaming it to indicate the desired study area, and changing the working directory within the scenario.R file to identify that folder. The name of the folder should begin with <U+2018>scenario.<U+2019>, and indentify the year of study. For example, if conducting a California regional assessment, the folder could be named scenario.California2014, and has all the contents identical to the original eez2013 folder
