## Modifying and creating data layers

### Overview

Data layers are *.csv* files and are located in the `[assessment]/[scenario]/layers` folder. All  layers provided in your regional assessment repo are the global values from the 2014 assessment. 

![](./fig/layers_folder_location_global2013.png)  

* Layers with the suffix `_gl2014.csv` (*gl* for *global*) have been exactly copied from the global assessment and applied equally to each region, and therefore the values will be the same across all subcountry regions. 
* Layers with the suffix `_sc2014.csv` (*sc* for *subcountry*) have been spatially-extracted from global data or adjusted with spatially-extracted data so that each subcountry region has a unique value. For example, gross domestic product (GDP) used in the global assessment was reported at the national (most often country) level. Instead of being applied equally across all subcountry regions (which would greatly increase the nation's GDP), national GDP was down-weighted by the proportion of coastal population in each region compared with the total coastal population.

Both types of dat layers are at coarse-resolution and should be exhanged for local, high-resolution data when possible. The priority should be to replace as much of the `_gl2014.csv` data as possible.

**There are several steps to follow when working with data layers:**

1. Modify or create data layer with proper formatting
2. Save the layer in the `layers` folder
3. Register the layer in `layers.csv`
4. Check (and update when appropriate) `pressures_matrix.csv` and `resilience_matrix.csv` (located in the `[assessment]/[scenario]/conf` folder)

### Create data layers with proper formatting

The OHI Toolbox App expects each data layers to be in its own .csv file and to be in a specific format, with data available for every region within the study area, with data organized in 'long' format (as few columns as possible), and with a unique region identifier (rgn_id) associated with a single score or value. 

The following is an excerpt from the 'Formatting data for the Toolbox' section above. For more information about formatting and gapfilling, please consult that section.

The example below shows information for a study area with 4 regions. There are two different (and separate) data layer files: tourism count (tr_total.csv) and natural products harvested, in metric tonnes (np_harvest_tonnes.csv). Each file has data for four regions (1-4) in different years, and the second has an additional 'categories' column for the different types of natural products that were harvested. In this example, the two data layers are appropriate for status calculations with the Toolbox because:

1. At least five years of data are available, 
2. There are no data gaps
3. Data are presented in 'long' or 'narrow' format (not 'wide' format).

**Example of data in the appropriate format:**

![](./fig/formatting_data_example.png)


### Save data layers in the *layers* folder

When you modify existing or create new data layers, we recommend saving this as a new *.csv* file with a suffix identifying your regional assessment (example: `_israel2014.csv`). Modifying the layer name provides an easy way to track which data layers have been updated regionally, and which rely on global data. Template layers (`_gl2014.csv` and `_sc2014.csv`) can then be deleted.

![](./fig/layer_example_israel2014.png)
  
### Register data layers in *layers.csv*  
  
When there are new filenames associated with each layer, they will need to be registered in `[assessment]/[scenario]/layers.csv`. If a layer simply has a new filename, only the *filename* column needs to be updated:
  
  ![](./fig/layers_israel2014.png)  
  
However, if a new layer has been added (for example when a new goal model is developed), you will need to add a new row in the registry for the new data layer and fill in the first eight columns (columns A-H); other columns are generated later by the Toolbox App as it confirms data formatting and content:

 + **targets:** Add the the goal/dimension that the new data layer relates to. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately.
 + **layer:** Add an identifying name for the new data layer, which will be used in R scripts like functions.R and *.csv* files like `pressures_matrix.csv` and `resilience_matrix.csv`.
 + **name:** Add a longer title for the data layer: this will be displayed in the Toolbox interface.
 + **description:** Add a longer description of the new data layer this will be displayed in the Toolbox interface.
 + **fld_value:** Add the appropriate units for the new data layer (which will be referenced in subsequent calculations).
 + **units:** Add a description about the *units* chosen in the *fld_value* column above.
 + **filename:** Add a filename for the new data layer that matches the name of the csv file that was created previously in the `layers` folder.
 + **fld_id_num:** Area designation that applies to the newly created data layer, such as: *rgn_id* and *fao_id*.

### Check pressures and resilience matrices

If the new or modified layer is a pressures layer, check again that `pressures_matrix.csv` and `resilience_matrix.csv` have been properly modified to register the new data. 
