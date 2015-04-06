# Instructions for creating and naming data files for each OHI goal

This document explains how to name files that contain data for each layer, and how the file should be formatted for integration into the Ocean Health Index Toolbox.

At this stage, each person must create a separate file for every data layer they are responsible for, and this will need to be done for pressures and resilience data layers as well when they are ready.

## File names

Each file containing data in the proper format is called a `data layer`, and has special nomenclature for its name. The name of the file has several components, which is important for organization:

> prefix_layername_scenario_suffix.extension

There cannot be any white spaces in any part of the filename.

The **prefix** will be the letters identifying each goal (two letters) or sub-goal (three letters):

Goal | Code | Sub-goal | Code
---- | ---- | -------- | ----
￼Food Provision | FP | Fisheries | FIS
 | | Mariculture | MAR
Artisanal Fishing Opportunity | AO
Natural Products | NP
Coastal Protection | CP
Carbon Storage | CS
Livelihoods and Economies | LE | Livelihoods | LE
 | | Economies | ECO
Tourism and Recreation | TR
Sense of Place | SP | Iconic Species | ICO
 | | Lasting Special Places | LSP
Clean Waters | CW
Biodiversity  | BD | Habitats | HAB  
 | | Species | SPP

For example, all data layers for artisanal fishing opportunities will begin like this:

The **layername** component should be formed of words or abbreviations that will help identify what the layer is. All words must be separated by underscores ('') without whitespace anywhere.

The **scenario** component should identify the assessment scenario: the study area location and year of the assessment. The data layers that already exist on GitHub are all global data from the 2014 assessment  and have the  suffix 'gl2014'.


The **suffix** of the filename should identify who prepared the data so any questions can easily to sent to the correct person. For the suffix, please identify yourself with your initials.

The **extension** is the final component  of the filename. It identifies the filetype and is  separated by a period (.). For OHI, we will use comma separated values (.csv).

Here is an example of a properly named data layer for the  tourism and recreation goal, where the data are the percent of unemployment  prepared by Julia Lowndes.

> tr_unemployment_ecuador2015_JL.csv

## Contents of data layers

When you have finished with the data you are working with, create an Excel file and save it with the filename discussed above. This data file will have at least two, but at most four, columns of information.  Look at an example in the `layers` folder on Github and you will see all layers have a `rgn_id` column. This is a numerical identifier for each region in your study area. You can find the identifier on the *regions* page of your WebApp.

When you have entered your data appropriately, instead of saving as an Excel file (.xlsx), save the file as a .csv file. If you do not know how to save the file as a .csv, you can save it as an .xlsx.

## Explanatory document to accompany  each data file

Please write a document to accompany each data file. The document must be saved as a .txt file or a .pdf file, but not a Word document (.doc).

1. Filename of the data layer
1. Name of the data layer (for the 'name' column in `layers.csv`)
1. Identify the target for this data layer: goal, sub-goal, pressures, or resilience
1. The data source: the institution that collected the original data, the institution providing the data (if different from the original) the year it was accessed, the URL or publication reference
1. The years of data available
1. The units of data
1. Full explanation of how to interpret the data values, including any processing or rescaling (normalizing from 0-1) that has occurred
1. one-sentence explanation of the data layer (for the 'description' column in `layers.csv`)
1. Any other observations or explanations about the data

You will need to make a explanatory document for each data layer. Make sure that each explanatory document includes all of the information (1-9) above. 
