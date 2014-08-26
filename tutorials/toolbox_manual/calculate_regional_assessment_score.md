# Calculate regional assessment scores

\*\* **Note: this page is under development**

It is at this point possible to incorporate all of the decisions your team has made into the OHI framework. 

You may want to consult the gathering data [page](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/gathering_appropriate_data.md#gathering-appropriate-data) before starting. Also, please learn how to [format](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_manual/formatting_data_for_toolbox.xlsx) the data prior to starting.

In general, understanding how the Toolbox is structured can help identify what must be modified for a regional assessemt, particularly with data and models.

## Overview

  1.  Modifying data layers

  2.  Registering the layers

  3.  Updating goal models

  4.  Register goal inputs 

  5.  Check (and update when appropriate) pressures_matrix.csv and resilience_matrix.csv

## Modifying data layers
The default data layers to be modified for the regional assessment are located in the layers folder (as shown for the China assessment below), and each data layer is saved as a separate *.csv* file in the `layers` folder.

![alt text](zfig_layers_location_1.png)

New data layers will be added, and old layers modified directly in this folder.

Suppose for instance that finer resolution data becomes available for the fisheries sub-goal during a regional evaluation; for example an improved B/Bmsy ratio for the 'Ablennes hians' species that was obtained through formal stock assessments and complex models developed for data-rich fisheries. The old ratios derived from the latest global assessment, say 1.03 in 2008 could then be replaced  with the new ratio, and the new score subsequently calculated.

![alt text](zfig_bmsy_layer_example_3.png)

## Registering data layers

Once the new data has been introduced into the appropriate layer file, it has to be registered into the registry shown in the file below.

![alt text](zfig_layers_csv.png) 

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
