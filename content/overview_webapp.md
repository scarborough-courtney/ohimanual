# Overview of the OHI Toolbox <<and OHI WebApp>>

>**Section Summary:**

>In this section, you will learn how to access and use the OHI WebApps. Once using the WebApp, you can conduct a preliminary assessment and use the built-in functions to compare input layers,  output scores, and change data display options.

## Background

**OHI WebApps** are websites created to facilitate independent assessments, and one is available for nearly every coastal nation or territory. The WebApps are meant to be a ‘Starter Kit’ and are available through http://ohi-science.org using a three-letter identifier in the URL. For example, Ecuador’s WebApp ("ECU") is found at http://ohi-science.org/ecu.
Each WebApp displays data layers\*, which are raw data in this case, as well as the calculated OHI scores based on information extracted from global assessments. As such, they do not provide fine-scale resolution of data for each coastal nation or territory: the scores and data on which they are based are a starting point for an assessment to be conducted by an independent group. These data can be used as a default if better data for the region do not exist, but we encourage you to replace them wherever possible. (\*Note: each data component that is included in the OHI is called a **data layer** because it will be combined with others to calculate the goal scores. Many data layers are rescaled from 0-1 to be combined with  other data layers on the same unitless scale.)  

Boundaries for exclusive economic zones (EEZs) were identified by www.marineregions.org and the largest subcountry regions (i.e., provinces, states, districts) were identified by http://gadm.org. Subcountry region boundaries were extended offshore to divide the EEZ of each study area into offshore regions. These subcountry regions have been provided as a starting point, and are typically coastal states or provinces, which, in our experience, is consistent with the scale at which most policy decisions are made. However, it is possible to change the boundaries for the regions and the study area depending on your preferences.  

OHI WebApps serve several purposes because they:

1. allow for exploration of how the Index works: what data look like and which data layers are used in each goal
2. are a communication platform for an assessment team, since information is presented in a manner that is accessible to group members of different disciplines and technical capacities
3. can be used to set data gathering or goal model development priorities for the assessment
4. display your assessment’s data and calculated scores once you have finalized and formatted your data and modified goal models.  

The information displayed on the website is stored online, in a **GitHub repository.** GitHub is an open-source development platform allows for multiple users to collaborate, track changes, and document work such as data files and code. Therefore, any changes made to the files contained within the GitHub repository will be displayed on the WebApp for all team members to view. See below for how to modify files using GitHub.  

## Using the WebApp

When first exploring a WebApp (for example, http://ohi-science.org/ecu), first note that it is possible to **translate** the site into any language that Google provides using the pull-down menu at the top.  

![](https://docs.google.com/drawings/d/11Gojqw0Xz4kUo_uM1Y699EKO3qN_dae0w93ICzXJ2Pg/pub?w=960&h=720)

The WebApp homepage provides several tabs for you to explore. The interactive **App** sub-page allows you to explore input data layers and output calculated scores for each region (See **Overview of Variable Options**). More detailed information is about the default **regions** and **data layers**, **goal models**, and **calculated scores** based on global data can be viewed in separate tabs, as well as through the App page.
A quick reference about navigating the WebApp is available through the **Docs** link at the bottom of the page. When your team has finalized data layers and updated goal models, these data and scores will be visualized through the WebApp.

## The App Page

The App page allows you to explore and visualize input data layers and calculated output scores for each region in the study area. By default, global data are presented for each subcountry region in the study area, and scores are calculated for each region using those data.  

The App  pagedisplays this information through two tabs: Data and Compare. The **Data** tab provides several subtabs for viewing data (*Map*, *Histogram*, *Table*), and is the default tab when the Toolbox is launched. The **Compare** tab is most useful for comparing output scores when modifications are made to the underlying data or models (this provides a way to error check) once you have begun the process of calculating your own assessment.  

The App provides two Branch/Scenario options to view, identified in the upper-left corner of the Data tab. The **Branch** options refer to the versions of the GitHub repository where data are stored. Branches start off as copies of the same repository, but can be modified independently of each other, enabling progress to be made on one (‘draft’ branch) while not altering the vetted original (‘published’ branch). These branches can be merged back together at any time. The App page will display the ‘published branch’ by default; we recommend working on the ‘draft’ branch until your assessment is finalized, at which point you would merge the draft branch with the published branch.  

**Scenario** folders contain all the files needed to calculate scores. Scenario folders can differ from each other based on the years included (i.e., 2014 would be a different scenario from 2015), or they can be used to explore outcomes of policy alternatives, such as implementation of a proposed Marine Protected Area network or fisheries regulations.


## The App's Data tab

### Overview of display options

The Data tab displays input data layer or calculated scores for each goal parameter, and presents the information as a map, histogram, or table. These options (*Map*, *Histogram*, *Table*) are presented as subtabs located the map. The Map subtab is the default display option for the Data tab, and all data presented are based on data from global assessments.


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

The Data tab has drop-down menus from which  you choose the data to be displayed. Data selected from the pull-down menus can be viewed in Map, Histogram, or Table form as described in the section above. Descriptions, statistics and metadata for the chosen fields are also displayed below the drop-down menus on the left side of the tab.

![](./fig/varible_options_view.png)


The first selection to be made from the drop-down menus is variable type, in which you can choose the **Output Score** that will show a calculated score (for a particular target chosen subsequently), or **Input Layer** that will show the data layer used to calculate the score of a particular target. To reiterate, Output Scores are the scores calculated using the Input Layers (data layers).  

For example, if you select ‘Output Score’ as the variable type (which is the default), you will then be able to choose a target (goal or sub-goal), and the OHI dimension to be reported.  

As another example, if you select 'Input Layer' as the variable type, you will be able to choose a target and a specific data layer associated with that target. If that layer has multiple categories or years available, you will be able to select a preference. Without selection, the default setting is the first category alphabetically and the most recent year.


![](./fig/overview_variable_options2.png)

## The App’s Compare tab

The **Compare** tab allows you to compare differences in calculated scores based on changes you have made to the underlying data layers. Visualizing these differences is extremely helpful for confirming results and error checking. Instructions about how to use the Compare function are presented <<where??>> following more context about why you might want to use this functionality.
