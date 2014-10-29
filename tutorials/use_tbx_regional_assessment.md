# Using the Toolbox for a Regional Assessment

\*\* **Note: this page is under development**

This page explains how to incorporate all of the [pre-Toolbox decisions](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/pretoolbox_decisions) your team has made for your regional assessment into the OHI framework and your repository. Having a good understanding of how the Toolbox is structured can also help identify what must be modified for a regional assessment, particularly with data and models. This page assumes a good understanding of the [Toolbox file system](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/file_system.md#file-system).  

The most common modifications you will make to your repository are changes with:

- [updating or adding new data layers](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/use_tbx_regional_assessment.md#modifying-and-creating-data-layers)
- [modifying goal models](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/use_tbx_regional_assessment.md#modifying-goal-models)
- [removing goals](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/use_tbx_regional_assessment.md#removing-goals)


## Modifying and creating data layers

To modify existing or create new data layers, data must be appropriately [formatted](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/formatting_data_for_toolbox.xlsx).  
  
**There are several steps to follow when working with data layers:**

1. Create data layer with proper formatting
2. Save the layer in the `layers` folder
3. Register the layer in `layers.csv`
4. Check (and update when appropriate) `pressures_matrix.csv` and `resilience_matrix.csv` (located in the `ohi-[assessment]/[scenario]/conf` folder)

### Create data layers with proper formatting
[develop]

### Save data layers in the *layers* folder

Data layers are *.csv* files and are located in the `ohi-[assessment]/[scenario]/layers` folder. The layers provided in your regional assessment repo are the global values from the 2013 assessment: these layers all have a suffix of `_global2013.csv`. These data are at coarse-resolution and should be exhanged for local, high-resolution data when possible.

  ![](./fig/layers_folder_location_global2013.png)  
  
When you modify existing or create new data layers, we recommend saving this as a new *.csv* file with a suffix identifying your regional assessment (example: `_israel2014.csv`). Modifying the layer name provides an easy way to track which data layers have been updated regionally, and which rely on global data.

![](./fig/layer_example_israel2014.png)
  
### Register data layers in *layers.csv*  
  
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

### Check pressures and resilience matrices

[under development](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/update_matrices.md#update-resilience_matrixcsv)

## Modifying goal models
In the discussion on data layers above, when an existing layer is still used as before but has a new *filename*, nothing further needs to be done for the Toolbox to incorporate this updated layer. However, if a new layer has been added to the `layers` folder and registered in `layers.csv` (and potentially added to the pressures or resilience matrices), the Toolbox will still not use it unless it is incorporated into a goal model.  
  
**There are several steps to follow when working with goal models:**

1. Update `functions.r`
2. Check and possibly update `goals.csv`

### Update *functions.r*

To incorporate a new data layer into a goal model, open `functions.R`: this script contains all the models for each goal and sub-goal. In RStudio, there is a navigation pane that can be used to navigate between them:

![](./fig/navigation_functions.png)

### Check and possibly update *goals.csv*

*goals.csv* provides input information for *functions.r*, particularly about goal weighting and function calls. It also includes descriptions about goals and sub-goals, which is presented in the Toolbox Application. 

Changing goal weights will be done here by editing the value in the *weight* column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a percentage of the goal totals. `goals.csv` also indicates the arguments passed to `functions.r`. These are indicated by two columns: *preindex_function* (functions for all goals that do not have sub-goals, and functions for all sub-goals) and *postindex_function* (functions for goals with sub-goals).

![](./fig/registering_goals.png)


**When updating layers or goal models, it is important to ensure that information called from *goals.csv* is correct**: 

- check the years
- etc...



## Removing goals
If a goal is not relevant in your region, it is possible to remove the goal completely from the calculation. There are four places where you will need to remove the reference to this goal:

1. `functions.r`
2. `goals.csv`
3. `pressures_matrix.csv`
4. `resilience_matrix.csv`

![*Failing to delete all referenced layers after the goal is deleted will prompt a number of error messages.*](./fig/remove_goal.png)

### Example: Removing 'Carbon Storage' goal
1) Remove the CS goal model from `functions.r`:

![Delete the highlighted text that references the CS layers and calculates CS goal status, trend, and scores](./fig/functions_delete.png)

2) Remove the CS row from `goals.csv`:

![Delete the highlighted row that contains the CS goal](./fig/goals_delete.png)

3) Remove all CS rows from `pressures_matrix.csv`:

![Delete the highlighted rows that contain CS pressures](./fig/delete_pressures.png)

4) Remove all CS rows from `resilience_matrix.csv`:

![Delete the highlighted rows that contain CS resilience](./fig/delete_resilience.png)




## Example modifications

### Adding a new layer to a goal model

In this example we will walk through the following steps:

1. decide to add artisanal access component to the model because of locally available data
2. prepare the data file; save layer ao_access_art
3. register in `layers.csv`
4. update goal model in `functions.r`
5. update goal call in `goals.csv`

1) and 2) is done outside of the Toolbox

3. register in `layers.csv`

![](./fig/new_layer.png)


4. update goal model

![](./fig/functions_explained.png)

5. [develop]

### Updating resilience matrix with local habitat information

In this example we will borrow from the experience of `ohi-israel`, where they assessed habitats in the Habitats (HAB) sub-goal that were not included in global assessments `ohi-global`. Therefore, the resilience matrix may need some revision.  

The habitats assessed for `ohi-israel` are:

> `rocky_reef, sand_dunes, soft_bottom`

***Layers affected:***  

* resilience_matrix.csv
* resilience_weights.csv (only if adding new resilience layers)   

***Scripts affected:***  

* none (but may need to create a simple code to generate modified layers)   

***Default resilience layers:***   
The full list of layers used to calculate resilience in `ohi-global` are:

> `alien_species,  cites,  fishing_v1,	fishing_v1_eez,	fishing_v2_eez,	fishing_v3,	fishing_v3_eez,	habitat,	habitat_combo,	habitat_combo_eez,	li_gci,	li_sector_evenness,	mariculture,	msi_gov,	species_diversity,	species_diversity_3nm,	tourism,	water,	wgi_all`

Some of these layers capture general aspects of governance that apply to the protection of any habitat. These are:  

> `alien_species, cites, msi_gov, water, wgi_all`

Two layers only apply to the livelihoods and economies goal (LE), so they should be excluded from HAB resilience:

> `li_gci,  li_sector_evenness`

The remaining layers will apply to certain habitats, but not others. We focus on these to determine how to adapt the HAB resilience calculation for `ohi-israel`. They are:

> `fishing_v1, fishing_v1_eez, fishing_v2_eez, fishing_v3, fishing_v3_eez, habitat, habitat_combo,	habitat_combo_eez, mariculture, species_diversity, species_diversity_3nm,	tourism`

**To determine how to modify these resilience layers:**

* If the new habitat occurs only along the coast, we should use `tourism` and `species_diversity_3nm`, otherwise, only use `species_diversity`. 
    + `sand_dunes` should use `tourism` and `species_diversity_3nm`,
    + `soft_bottom` should use `species_diversity`,
    + is `rocky_reef` mainly coastal? if so it should use `tourism` and `species_diversity_3nm`.
* If the habitats can be affected by mariculture plants (e.g. eutrophication and decreased water quality can occur if mariculture plants are close by and have poor wastewater treatment), then the `mariculture` resilience score should be added.
    + are there any mariculture plants in Israel? If yes, on which habitats do they occur?
* The remaining layers are the `fishing_v...` and `habitat..` layers, these are composite indicators that we call 'combo' layers, obtained from different combinations of the following datasets:

> `Mora, Mora_s4, CBD_hab, MPA_coast, MPA_eez`,

where: 

* `Mora` is a fisheries governance effectiveness indicator by Mora *et al* (2009)
* `Mora_s4` is another indicator from Figure S4 of the supplementary material of the same publication that focuses on regulations of artisanal and recreational fisheries
* `CBD_hab` is a questionnaire compiled by countries that committed to Rio's Convention on Biodiversity (CBD) to establish their progress towards habitat biodiversity protection
* `MPA_coast` is the proportion of coastal (3nm) waters that are in a marine protected area (MPA), with the maximum being 30% of coastal waters 
* `MPA_eez` is the proportion of the whole EEZ that is in a marine protected area, with the maximum being 30% of the whole EEZ.  

This table shows which data-sets are used by each combo layer: 

Layer | Mora | Mora_s4 | CBD_hab | MPA_coast | MPA_eez
------|------|---------|---------|-----------|--------
fishing_v1 | Mora | | CBD_hab | MPA_coast | 
fishing_v1_eez | Mora | | CBD_hab | | MPA_eez
fishing_v2_eez | Mora | Mora_s4 | CBD_hab | | MPA_eez
fishing_v3 | | Mora_s4 | CBD_hab |  MPA_coast | 
fishing_v3_eez | | Mora_s4 | CBD_hab | | MPA_eez
habitat | | | CBD_hab | | 
habitat_combo | | | CBD_hab |  MPA_coast | 
habitat_combo_eez | | | CBD_hab | | MPA_eez

**Questions to consider**:

1) For which habitats should you use both a fishery and a habitat combo, or just use a habitat combo?
* fisheries regulations do not affect the conservation of sand-dunes, so this habitat should not use any of the fisheries combos. Also, this is a strictly coastal habitat, so choose the habitat layer that uses the `MPA_coast` instead of the `MPA_eez`, i.e. `habitat_combo` (and, as mentioned above, choose the coastal version of biodiversity, i.e. `species_diversity_3nm`).
* The rocky reef and soft bottom, on the other hand, should definitely include fisheries regulations. So you'll need to choose a fisheries and a habitat combo for these two habitats.
2) Which fisheries and habitat combos for `rocky_reef` and `soft_bottom`? The choice depends on two things:
* whether they are coastal habitats (within 3nm of the coast) or EEZ-wide habitats     
      + if coastal, use the fisheries and habitat combos with `MPA_coast` (`fishing_v1`, `fishing_v3`, `habitat_combo`), and the `species_diversity_3nm` layer   
      + if EEZ-wide, use the fisheries and habitat combos with `MPA_eez` (`fishing_v1_eez`, `fishing_v2_eez`, `fishing_v3_eez`, `habitat_combo_eez`), and the `species_diversity` layer
* whether the fisheries occurring on that habitat are mainly artisanal, mainly commercial, or both
    + if only commercial fisheries, use a layer that only uses the `Mora` data `fishing_v1..`)
    + if only artisanal/small-scale fisheries, use a layer that only uses the `Mora_s4` data (`fishing_v3..`)
    + if both, use a layer that uses both `Mora` and `Mora_s4` data (`fishing_v2..`)
3) Are the existing combo layers appropriate or do you need an ad-hoc version for any of the Israel habitats? 
* if rocky reef is mainly coastal, and it is fished by both commercial and artisanal methods, then we need a new combo, specifically, we need a combo that uses `Mora`, `Mora_s4`, `CBD_hab`, and `MPA_coast` (this is the same as `fishing_v2_eez`, but we use the `MPA_coast` layer instead of the `MPA_eez`). All other combinations are already present.
4) Are there local data to be used?
* if there are local data on Marine Protected Areas (MPAs) and any areas with special regulations, this should be used to generate the `MPA_coast` and `MPA_eez` layers. \*\*NOTE: these are the same datasets used to calculate the status of Lasting Special Places (LSP).
5) How to update `resilience_matrix.csv`?
* write the complete list of layers you want to use for each habitat. Based on the above, for example, `soft bottom` in Israel matches the combination of layers called *soft bottom, with corals* in the default `resilience_matrix.csv`. But the `rocky_reef` and `sand_dunes` don't seem to match any existing combination, so you'll probably need to delete some of the rows, e.g. the *coral only*, and replace with new ad-hoc rows.


## Notes about R

The Toolbox is written in R, and relies heavily on a few R packages created to faciliate data handling and manipulation. The primary R package used is called `dplyr` by Hadley Wickham. The `dplyr` package allows for 'chaining' between functions, which is represented with a `%>%`. See [github.com/hadley/dplyr#dplyr](https://github.com/hadley/dplyr#dplyr) for documentation. 




