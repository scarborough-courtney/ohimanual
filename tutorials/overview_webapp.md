# Overview of the OHI Toolbox App

The Toolbox Application (App) has two **tabs**: **Data** and **Compare**. The **Data** tab provides several subtabs for viewing data (*Map*, *Histogram*, *Table*), and is the default tab when the Toolbox is launched. The **Compare** tab is most useful for error checking.
  
The **Branch/Scenario** is displayed in the upper-left corner of the Data tab. 

The Github branch is either "draft" if in the process of editing, or "published" if scores are in a final state. The term branch technically refers to how the data files are stored in Github:

1. **draft** branch is for editing. This is the default branch and the main working area where existing scenario data files can be edited and new scenarios added.

2. **published** branch is a vetted copy of the draft branch, not for direct editing.

An Ocean Health Index scenario contains all the files needed to calculate scores. By convention, scenarios are named with the spatial scale and year.

## Data tab

### Overview of display options
The Data tab displays input data or calculated scores for each goal parameter, and presents the information as a map, histogram, or table. These options are presented as subtabs located above the map (the Map subtab is the default display option for the Data tab).


**Data displayed in the Map subtab:**
  
![](./fig/datapage_view.png)

The map displays data for every region as reported in the scenario. A color legend is displayed in the lower right corner of the map that provides a linear colormap of the data. The range of values will change as different variables are selected.


**Data displayed in the Histogram subtab:**

![](./fig/histogrampage_view.png)

The histogram shows the distribution of the selected variable as the number of observations per value bin (white bars) and a smoothed density function (pink shading).


**Data displayed in the Table subtab:**
  
![](./fig/tablepage_view.png)

The table displays the target value for each region and the overall study area. It provides an identifying code (rgn_id), name (rgn_name), and value (value) for each.


### Overview of variable options

The Data tab has drop-down menus from which the user chooses the data to be displayed by the Toolbox. The data selected from the pull-down menus can be viewed in Map, Histogram, or Table form as described in the 'Overview of display options' section above. Descriptions, statistics and metadata for the chosen fields are also displayed below the drop-down menus on the left side of the tab.

![](./fig/varible_options_view.png)


The first selection to be made from the drop-down menus is variable type, in which the user can choose the **Output Score** that will show a calculated score (for a particular target chosen subsequently), or **Input Layer** that will show the data layer used to calculate the score of a particular target. 

> In short: **Output Score = Calculated Score** and **Input Layer = Data**

For example, if the user selects ‘Output Score’ as the variable type (which is the default), they will then be able to choose a goal/sub-goal (target), and the goal/sub-goal score calculation (dimension) to be reported.

On the other hand, if the user selects 'Input Layer' as the variable type, they will be able to choose a target and a specific data layer that is associated with that target. If that layer has multiple categories or years available, the user will be able to select a preference, with a default being the first category alphabetically and the most recent year.

![](./fig/overview_variable_options2.png)

## Compare tab

The **Compare** tab allows you to visualize score differences between different branches, scenarios and/or commits (ie each online save). It proves most useful for error checking during the editing phase of development.
