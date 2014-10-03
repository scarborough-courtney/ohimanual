# File System
This section describes the files within the ohi-[assessment] folder that you have accessed by either cloning through GitHub and RStudio or downloading to your computer from GitHub.

## Assessments and scenarios
Within the **ohi-[assessment]** folder is the **scenario** folder. The scenario folder contains all the data, functions and other files required to calculate the Ocean Health Index. To calculate the Index for a different region or with new data or models, you will modify the files within this folder (default data is from the global assessment).

In this example, **ohi-global** is the assessment folder and **eez2013** is the scenario.

### eez2013
Each of the elements (files and folders) within `ohi-global/eez2013` are critical to the proper functioning of the Toolbox. All .csv files can be read with text editors or with Microsoft Excel or similar software.

![alt text](./fig/ohiglobal_file_location.png)

### layers.csv
`layers.csv` is the registry that manages all data to be used in the Toolbox.

![alt text](./fig/layers_csv_registry.png)

Each row of information represents a specific data layer that has been prepared and formatted properly for the Toolbox. The first columns contain information inputted by the user; other columns are generated later by the Toolbox App as it confirms data formatting and content. The first columns have the following information:

 + **targets:** indicates how the data layer related goals or dimensions. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately.
 + **layer:** is the identifying name of the data layer, which will be used in R scripts like `functions.R` and .csv files like `pressures_matrix.csv` and `resilience_matrix.csv`. This is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **name:** is a longer title of the data layer; this is displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **description:** is further description of the data layer; this is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **fld_value:** indicates the units along with the units column.
 + **units:** some clarification about the unit of measure in which the data are reported
 + **filename:** is the .csv filename that holds the data layer information, and is located in the folder ‘layers’.
 
 
### layers folders
The layers folder contains every data layer as an individual .csv file. The names of the .csv files within the layers folder correspond to those listed in the filename field of the layers.csv file described above. All .csv files can be read with text editors or with Microsoft Excel or similar software.

![alt text](./fig/layers_folder_location.png)

Note that each file has a specific format that the Toolbox expects and requires in order to run properly. Comma separated value files (.csv files) can be opened with text editor software, or will open by default by Microsoft Excel (if it is installed). Below is an example of proper data formatting using the file cc_acid_2013.csv. Note the unique region identifier (rgn_id) with a single associated pressure_score, and that the data are presented in ‘long format’ with minimal columns. Please see HowTo_FormatDataForToolbox (available from ohi-science.org) for further details and instructions on data formatting requirements.

![alt text](./fig/cc_acid_format_example.png)

### scenario.R
scenario.R is a script in R that identifies which data layers and models should be used to calculate OHI scores using the Toolbox App. This combination of data layers, models, and all supporting files are called a ‘scenario’. Currently, the default scenario is using Global 2013 assessment files, and is the folder within ohi-global, called eez2013. When conducting regional assessments, the best way to start is by copying the folder eez2013, renaming it to indicate the desired study area, and changing the working directory within the scenario.R file to identify that folder. The name of the folder should begin with ‘scenario.’, and indentify the year of study. For example, if conducting a California regional assessment, the folder could be named scenario.California2014, and has all the contents identical to the original eez2013 folder, and in scenario.R, the third line would be changed to read:

> Users/jstewart/ohi-california

![alt text](./fig/file_system_scenario.png)

### scores.csv
scores.csv is a record of the calculated scores for the assessment (Global 2013 scores). Scores are reported for each dimension (future, pressures, resilience, score, status, trend) for each reporting region, and are presented in ‘long’ format. 

### conf folder
This folder includes includes R functions (config.R and functions.R) and .csv files containing information that will be accessed by the R functions (goals.csv, pressures_matrix.R, resilience_matrix.csv, and resilience_weights.csv).

 + **config.R:** is an R script that configures labeling and constants appropriately.
 + **functions.R:**  contains functions for each goal and sub-goal model, which calculate the status and trend using data layers identified as ‘layers’ in layers.csv. 
 + **goals.csv:** is a list of goals and sub-goals and their weights used to calculate the final score for each goal. Other information includes the goal description that is also presented in the Toolbox App. Changing goal weights will be done here by editing the value in the ‘weight’ column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a percentage of the goal totals. Goals can be removed by setting the weight to 0.
goals.csv also indicates the arguments passed to functions.R. These are indicated by two columns: preindex_function (functions for all goals that do not have sub-goals, and functions for all sub-goals) and postindex_function (functions for goals with sub-goals). 
 + **pressures_matrix.csv:** describes the layers (‘layers’ column in layers.csv) needed to calculate pressure categories. The matrix has weights assigned that were determined by Halpern et al. 2012 (Nature) based on scientific literature and expert opinion. Please see the OHI Conceptual Guide, HowTo_CalculatePressures and HowTo_CalculateResilience for more details. 
 + **resilience_matrix.csv:** describes the layers (‘layers’ column in layers.csv) needed to calculate resilience categories.  Please see the OHI Conceptual Guide, HowTo_CalculatePressures and HowTo_CalculateResilience for more details. 
 + **resilience_weights.csv:** describes the weight of various resilience layers, were determined by Halpern et al. 2012 (Nature) based on scientific literature and expert opinion.

### spatial folder 
The spatial folder contains components of shapefiles to delineate the 2013 OHI reporting regions that are created and read by spatial analysis software like ESRI’s ArcGIS. When conducting regional assessments, the files within this folder will need to be replaced by new files created for the study area and regions. See an example below in ‘Step_5 Scenarios’.



