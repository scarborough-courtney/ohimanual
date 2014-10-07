# Calculate regional assessment scores

\*\* **Note: this page is under development**

This page explains how to incorporate all of the [pre-Toolbox decisions](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/pretoolbox_decisions) your team has made for your regional assessment into the OHI framework and your repository. Having a good understanding of how the Toolbox is structured can also help identify what must be modified for a regional assessment, particularly with data and models. This page assumes a good understanding of the [Toolbox file system](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/file_system.md#file-system).  

The most common modifications you will make to your repository are changes with:

- [data layers](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/calculate_regional_assessment_score.md#data-layers)
- [goal models](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/calculate_regional_assessment_score.md#goal-models)


# Data layers

To modify existing or create new data layers, data must be appropriately [formatted](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/formatting_data_for_toolbox.xlsx).  
  
**There are several steps to follow when working with data layers:**

1. Save the layer in the `layers` folder
2. Register the layer in `layers.csv`
3. Check (and update when appropriate) `pressures_matrix.csv` and `resilience_matrix.csv` (located in the `ohi-[assessment]/[scenario]/conf` folder)

## Saving data layers in the *layers* folder

Data layers are *.csv* files and are located in the `ohi-[assessment]/[scenario]/layers` folder. The layers provided in your regional assessment repo are the global values from the 2013 assessment: these layers all have a suffix of `_global2013.csv`. These data are at coarse-resolution and should be exhanged for local, high-resolution data when possible.

  ![](./fig/layers_folder_location_global2013.png)  
  
When you modify existing or create new data layers, we recommend saving this as a new *.csv* file with a suffix identifying your regional assessment (example: `_israel2014.csv`). Modifying the layer name provides an easy way to track which data layers have been updated regionally, and which rely on global data.

![alt text](./fig/layer_example_israel2014.png)
  
## Registering data layers in *layers.csv*  
  
When there are new filenames associated with each layer, they will need to be registered in `ohi-[assessment]/[scenario]/layers.csv`. If a layer simply has a new filename, only the *filename* column needs to be updated:
  
  ![](./fig/layers_israel2014.png)  
  
However, if a new layer has been added (for example when a new goal model is developed), you will need to add a new row in the registry for the new data layer and fill in the first eight columns (columns A-H); other columns are generated later by the Toolbox App as it confirms data formatting and content:

 + **targets:** Add the the goal/dimension that the new data layer relates to. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately.
 + **layer:** Add an identifying name for the new data layer, which will be used in R scripts like functions.R and .csv files like pressures_matrix.csv and resilience_matrix.csv.
 + **name:** Add a longer title for the data layer: this will be displayed in the Toolbox interface.
 + **description:** Add a longer description of the new data layer this will be displayed in the Toolbox interface.
 + **fld_value:** Add the appropriate units for the new data layer (which will be referenced in subsequent calculations).
 + **units:** Add a description about the 'units' chosen in the 'fld_value' column above.
 + **filename:** Add a filename for the new data layer that matches the name of the csv file that was created previously in the 'layers' folder.
 + **fld_id_num:** Area designation that applies to the newly created data layer, such as: *rgn_id* and *fao_id*.

![alt text](./fig/new_layer.png)

## Checking pressures and resilience matrices



# Goal models
In the discussion on data layers above, when an existing layer is still used as before but has a new *filename*, nothing further needs to be done for the Toolbox to incorporate these new data. However, if a new layer has been added to the `layers` folder and registered in `layers.csv` (and potentially added to the pressures or resilience matrices), the Toolbox will still not use it unless it is incorporated into a goal model.  
  
**There are several steps to follow when working with goal models:**

1. Update `functions.r`
2. Check and possibly update `goals.csv`

## Update *functions.r*

To incorporate a new data layer into a goal model, open `functions.R`. This script contains the models for each goal and sub-goal and has a navigation pane that can be used to navigate between them:

![alt text](./fig/navigation_functions.png)

If the AO (Artisanal Opportunities) option is selected for example, the user is redirected to the the AO section that contains the AO models and references to the data layers (in layers folder) that are used to calculate the status and trend. 


### Example: Modifying 'Artisanal Opportunities' model

![alt text](./fig/functions_explained.png)

In other words, changes in **# cast data** allows the models to call on new layers, whereas changes in **# model** allows you to change the model.  


### Example: Removing 'Carbon Storage' goal

In order to remove the CS goal from OHI for example, the following files need to be removed because the latter goal is referenced by these 4-files:

![alt text](./fig/remove_goal.png)

**functions.R:**

>> ![alt text](./fig/functions_delete.png)

  * Delete the highlighted text that references the CS layers and contains the functions for calculating the CS goal's status, trend, and scores.

**goals.csv:**

>> ![alt text](./fig/goals_delete.png)

  * Delete the highlighted row that contains the registered CS goal.

**pressures_matrix.csv:**

>> ![alt text](./fig/delete_pressures.png)

  * Delete the highlighted row that contains the registered CS pressures.

**resilience_matrix.csv:**

>> ![alt text](./fig/delete_resilience.png)

  * Delete the highlighted row that contains the registered CS resiliences.

*Failing to delete all referenced layers after the goal is deleted will prompt a number of error messages.*



# Registering goal inputs
goals.csv: is a list of goals and sub-goals and their weights used to calculate the final score for each goal. Other information includes the goal description that is also presented in the Toolbox App.

![alt text](./fig/goals_csv.png)

Changing goal weights will be done here by editing the value in the ‘weight’ column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a percentage of the goal totals. Goals can be removed by setting the weight to 0. goals.csv also indicates the arguments passed to functions.R. These are indicated by two columns: preindex_function (functions for all goals that do not have sub-goals, and functions for all sub-goals) and postindex_function (functions for goals with sub-goals).

![alt text](./fig/registering_goals.png)

- Also, see: [update goals.csv](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/update_goals.md#update-goalscsv)



# Updating pressures and resilience matrix

Updating (adding, modifying, and/or removing) pressures and resilience can be done in the relevant folders shown below.

![alt text](./fig/pressures_resilience_matrix.png)

- **pressures_matrix.csv:** Describes the layers (‘layers’ column in layers.csv) needed to calculate pressure categories. The matrix has weights assigned that were determined by Halpern et al. 2012 (Nature) based on scientific literature and expert opinion.

- **resilience_matrix.csv:** Describes the layers (‘layers’ column in layers.csv) needed to calculate resilience categories. for more details.

- **resilience_weights.csv:** Describes the weight of various resilience layers that were determined by Halpern et al. 2012 (Nature) based on scientific literature and expert opinion.



### Example: Adding 'desalination' pressure
Suppose for instance that a research group wished to include additional pressures that were excluded from the previous analysis such as the effects of desalination operations. To do so, first create and register the necessary new layers (for example: po_desal_in_china2014, and po_desal_in_china2014) as described [previously](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/calculate_regional_assessment_score.md#creating-new-data-layers).

![alt text](./fig/register_pressure.png)

Then register the new layer in the pressure_matrix.csv and indicate how much the pressure affects the respective goals based on scientific literature and expert opinion (3=high pressure, 1=low pressure).

![alt text](./fig/register_new_pressures.png)

Notice that the pressures are grouped by category, indicated by a pre-fix (for example: po_ for pollution). Each category is calculated in a different way, so it is important to register the new pressure with the appropriate category pre-fix.

![alt text](./fig/pressure_categories.png)

See: [calculate_pressures](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/calculating_pressures.xlsx) for more details about calculating pressures.

Also See: [calculate_resilience](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/calculating_resilience.xlsx) for more details about calculating resilience.

Once the changes have been added and regisered appropriately, save all changes (r.functions)


# Changing goal weights       

Changing goal weights will be done in **[scenario]/conf/goals.csv** by editing the value in the ‘weight’ column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a percentage of the goal totals. Goals can be removed by setting the weight to 0.


# Troubleshooting

Please check the [troubleshooting page](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/toolbox_troubleshooting/toolbox_troubleshooting.md#toolbox-troubleshooting)

