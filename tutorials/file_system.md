## OHI Toolbox File System
This section describes the files within your GitHub repository.


## draft branch

![](./fig/draft_branch.png)


### Assessments and scenarios
Within the **ohi-[assessment]** folder is the **scenario** folder. The scenario folder contains all the data, functions and other files required to calculate the Ocean Health Index. To calculate the Index for a different region or with new data or models, you will modify the files within this folder (default data is from the global assessment).

In this example, **ecu** is the assessment folder and **subcountry2014** is the scenario.

![](./fig/ohiglobal_file_location.png)

The **subcountry2014** folder contains all the data inputs used to calculate the OHI score for that scenario (illustrated below), as well as the files that are necessary to run the calculations.

![](./fig/scenario_folder_overview.png)

See below for a detailed overview of all the files located in the scenario folder.

### *layers.csv*
`layers.csv` is the registry that manages all data to be used in the Toolbox.

![](./fig/layers_csv_registry.png)

Each row of information represents a specific data layer that has been prepared and formatted properly for the Toolbox. The first columns contain information inputted by the user; other columns are generated later by the Toolbox App as it confirms data formatting and content. The first columns have the following information:

 + **targets** indicates how the data layer related goals or dimensions. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately.
 + **layer** is the identifying name of the data layer, which will be used in R scripts like `functions.R` and *.csv* files like `pressures_matrix.csv` and `resilience_matrix.csv`. This is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **name** is a longer title of the data layer; this is displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **description** is further description of the data layer; this is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **fld_value** indicates the units along with the units column.
 + **units** some clarification about the unit of measure in which the data are reported
 + **filename** is the *.csv* filename that holds the data layer information, and is located in the folder ‘layers’.
 
 
### *layers* folder
The `layers` folder contains every data layer as an individual *.csv* file. The names of the *.csv* files within the layers folder correspond to those listed in the *filename* column of the `layers.csv` file described above. All *.csv* files can be read with text editors or with Microsoft Excel or similar software.

![](./fig/layers_folder_location.png)

Note that each *.csv* file within the `layers` folder has a specific format that the Toolbox expects and requires. Comma separated value files (*.csv* files) can be opened with text editor software, or will open by default by Microsoft Excel or similar software. Open a `layers/*.csv` file: note the unique region identifier (*rgn_id*) with a single associated *score* or *value*, and that the data are presented in ‘long format’ with minimal columns. Please see the section on *Formatting Data for the Toolbox* for further details and instructions.


### *conf* folder
The `conf` folder includes includes R functions (*config.R* and *functions.R*) and *.csv* files containing information that will be accessed by the R functions (*goals.csv*, *pressures_matrix.R*, *resilience_matrix.csv*, and *resilience_weights.csv*).

![](./fig/layers_folder_location_conf.png)

#### *config.r*
`config.r` is an R script that configures labeling and constants appropriately.

#### *functions.r*
`functions.r` contains functions for each goal and sub-goal model, which calculate the status and trend using data layers identified as ‘layers’ in `layers.csv`. 

#### *goals.csv* 
`goals.csv` is a list of goals and sub-goals and their weights used to calculate the final score for each goal. Other information includes the goal description that is also presented in the Toolbox App. `goals.csv` also indicates the arguments passed to functions.R. These are indicated by two columns: *preindex_function* (functions for all goals that do not have sub-goals, and functions for all sub-goals) and *postindex_function* (functions for goals with sub-goals).  

#### *pressures_matrix.csv*
`pressures_matrix.csv` maps the different types of ocean pressures with the goals that they affect.  

Each column in the pressures matrix identifies a data layer that is also registered in `layers.csv`: these presssure data layers are also required to have a value for every region in the study area. Pressure layers each have a score between 0-1, and has its pressure category indicated by a prefix (for example: *po_* for the pollution category). 

#### *resilience_matrix.csv*
`resilience_matrix.csv` maps the different types of resilience with the goals that they affect.

Like the pressures matrix, the resilience matrix also has weights depending on the level of protection. However, these weights are in a separate file: `resilience_weights.csv`.

Each column in the resilience matrix is a data layer that is also registered in `layers.csv`. Resilience layers, like the pressure layers, are also requried to have a value for every region in the study area. Resilience layers each have a score between 0-1. 

#### *resilience_weights.csv*
`resilience_weights.csv` describes the weight of various resilience layers, which in Halpern et al. 2012 (Nature) were determined based on scientific literature and expert opinion.

### spatial folder 
The spatial folder contains a single file, *regions_gcs.js*. This is a spatial file in the JSON format; it has the appropriate study area and regions for the assessment. This file will be created by the OHI team for all regional assessments.

### launchApp_code.R
The App can be launched through R by running the code in lauchApp_code.R.

### layers-empty_swapping-global-mean.csv 
Contains a list of data layers for which there were no data for the study area. In order for the Toolbox to run, global averages are used as template data. This file is not used anywhere in the Toolbox but is a registry of data layers that should be replaced with local data, as they are based on global averages. 

### *calculate_scores.r*
`calculate_scores.r` will run the Toolbox calculations using the *.csv* files in the *layers* folder that are registered in *layers.csv* and the configurations identified in *config.r*. Scores will be saved in *scores.csv*.

### scores.csv
`scores.csv` is a record of the calculated scores for the assessment (Global 2013 scores). Scores are reported for each dimension (future, pressures, resilience, score, status, trend) for each reporting region, and are presented in ‘long’ format. 


### Relaunching the Toolbox
After the initial Toolbox setup, further launches of the Toolbox Application can be done without the software program R. Instead, PC users can double-click the `launchApp.bat` file and Mac users can double-click the `launchApp.command` file.

