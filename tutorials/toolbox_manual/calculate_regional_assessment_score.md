# Calculate regional assessment scores

\*\* **Note: this page is under development**

It is at this point possible to incorporate all of the decisions your team has made into the OHI framework.

You may want to learn how to appropriately [gather](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/gathering_appropriate_data.md#gathering-appropriate-data) and [format](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/formatting_data_for_toolbox.xlsx) the data prior to starting.

In general, understanding how the Toolbox is structured can help identify what must be modified for a regional assessemt, particularly with data and models.

## Overview

  1.  Modifying existing data layers
  
  2.  Creating new data layers

  3.  Registering the layers

  4.  Updating goal models

  5.  Register goal inputs 

  6.  Check (and update when appropriate) pressures_matrix.csv and resilience_matrix.csv

![alt text](zfig_china2014.png)

## Modifying existing data layers
The default data layers to be modified for the regional assessment are located in the layers folder (as shown for the China assessment below), and each data layer is saved as a separate *.csv* file in the `layers` folder.

![alt text](zfig_layers_location_1.png)

New data layers will be added, and old layers modified directly in this folder.

Suppose for instance that finer resolution data becomes available for the fisheries sub-goal during a regional evaluation; for example an improved B/Bmsy ratio for the 'Ablennes hians' species that was obtained through formal stock assessments and complex models developed for data-rich fisheries. The old ratios derived from the latest global assessment, say 1.03 in 2008 could then be replaced  with the new ratio, and the new score subsequently calculated.

![alt text](zfig_bmsy_layer_example_3.png)

## Creating new data layers
Suppose however that the methodology for a particular data layer needs to be modified, rather than data points just being updated as in the example above with the B/Bmsy ratio. In that case, a new data layer must be created, registered, and then updated the relevant goal models and pressure/resilience matrices.

  * To create a new data layer, simply create a new csv file in the layers folder, add the relevant data points, and save the file.  

![alt text](zfig_new_data_layer.png)

  * In this case, additional 'access' data for the artisanal opportunities goal was added for each of the regions.

## Registering new data layers
Once the new data has been introduced into the appropriate layer file, it has to be registered in the layers.csv registry below:

![alt text](zfig_layers_csv.png)

New rows need to be added in the registry, and the newly created data layer registered as illustrated below:

 + **targets:** indicates the goal/dimension that any given data layer relates to (each row is a layer). Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately
 + **layer:** is the identifying name of the data layer, which will be used in R scripts like functions.R and .csv files like pressures_matrix.csv and resilience_matrix.csv. This is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **name:** is a longer title of the data layer; this is displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **description:** is further description of the data layer; this is also displayed on the Toolbox App under the drop-down menu when the variable type is ‘input layer’.
 + **citation:** is for book-keeping purposes, indicating where to find further information about the layer from the supplemental information of the 2012 Nature publication.
 + **units:** importantly describes which field (column header) is the value from the data layer.
 + **filename:** is the .csv filename that holds the data layer information, and is located in the folder called ‘layers’.
 + **fld_value:** indicates the units along with the units column.
 
![alt text](zfig_new_layer.png)

  * Note in particular that the column-G entry needs to match the name of the csv file created previously.

## Updating goal models

![alt text](zfig_funtions_r.png)

## Register goal inputs

![alt text](zfig_goals_csv.png)

## Check (and update when appropriate) pressures matrix and resilience matrix

![alt text](zfig_pressures_resilience_matrix.png)

- updated data layers
- new data layers

- update layers.csv

- [update goals.csv](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/update_goals.md#update-goalscsv)

- update pressures_matrix.csv. 
See: [excel spreadsheet](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/calculating_pressures.xlsx)

- [update resilience_matrix.csv](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/update_resilience_matrix.md#update-resilience_matrixcsv)
See: [excel spreadsheet](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/calculating_resilience.xlsx) 
