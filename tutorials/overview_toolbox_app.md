# Overview of the OHI Toolbox App

The Toolbox Application (App) runs through a web browser and has three **Page options**: *Data*, *Calculate*, and *Report*. The [*Data*](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/overview_toolbox_app.md#data-page) page provides several ways of viewing the data (*Map*, *Histogram*, *Table*), and is the default home-screen when the Toolbox is opened. The [*Calculate*](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/overview_toolbox_app.md#calculate-page) page is used to calculate goal scores based on the information in the file system (data can be changed and tested). The [*Report*](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/overview_toolbox_app.md#report-page) page provides different methods of reporting the data.  
  
The **Current scenario** is displayed in the upper-right corner of the Data page. This identifies the scale (example: global) and year (example: 2013) of the information displayed.  
  
![](./fig/homepage_view.png)

## Data page

### Overview of display options
The Data page displays input data or calculated scores for each goal parameter, and presents the information as a Map, Histogram, or Table. These options are presented as tabs located above the map (Map view is the default display option for the Data page).


**Data displayed in [Map](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/overview_toolbox_app.md#map) form:**
  
![](./fig/datapage_view.png)

The map displays data for every region as reported in the scenario. A color legend is displayed in the lower right corner of the map that provides a linear colormap of the data. The range of values will change as different variables are selected.


**Data displayed in [Histogram](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/overview_toolbox_app.md#histogram) form:**

![](./fig/histogrampage_view.png)

The histogram shows the distribution of the selected variable as the number of observations per value bin (white bars) and a smoothed density function (pink shading).



**Data displayed in [Table](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/overview_toolbox_app.md#table) form:**
  
![](./fig/tablepage_view.png)

The table displays the target value for each region and the overall study area. It provides an identifying code (rgn_id), name (rgn_name), and value (value) for each. It is possible to search the data using the search bar at the upper right of the table (caps-sensitive). It is also possible to search within individual columns by entering the search term at the bottom of each column; this option is more easily displayed by changing the number of records per page to 10 using the drop-down menu. Data may also be sorted the arrows at the left of each column name. Sorting by rgn_id is the default.


### Overview of variable options

The Data page has drop-down menus from which the user chooses the data to be displayed by the Toolbox. The data selected from the pull-down menus can be viewed in Map, Histogram, or Table form as described in the 'Overview of display options' section above. Descriptions, statistics and metadata for the chosen fields are also displayed below the drop-down menus on the left side of the page.

![](./fig/varible_options_view.png)


The first selection to be made from the drop-down menus is variable type, in which the user can choose the **Output Score** that will show a calculated score (for a particular target chosen subsequently), or **Input Layer** that will show the data layer used to calculate the score of a particular target. 

> In short: **Output Score = Calculated Score** and **Input Layer = Data**

For example, if the user selects ‘Output Score’ as the variable type (which is the default), they will then be able to choose a goal/sub-goal (target), and the goal/sub-goal score calculation (dimension) to be reported.

On the other hand, if the user selects “Input Layer” as the variable type, they will be able to choose a target and a specific data layer that is associated with that target. If that layer has multiple categories or years available, the user will be able to select a preference, with a default being the first category alphabetically and the most recent year.

![](./fig/overview_variable_options2.png)



## Calculate page
The Calculate page is used to calculate the Index. The Calculate page displays the “Scenario path” in the user’s home directory where the folders are located.

![](./fig/calculate_view.png)  
  

## Report page
The Report page allows the user to create a report of results as .html and .pdfs files.

![](./fig/reportpage_view.png)

It is currently possible to create flower plots and tables with several options, including saving global figures or figures per country. In future versions of the Toolbox App, more options for visualizations, including maps, histograms, and equations, will be possible. It will also be possible to compare different scenarios.
