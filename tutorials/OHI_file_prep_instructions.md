---
output: word_document
---

# Instructions for preparing data files for the OHI Toolbox

This document explains what to provide to Ning for OHI China. 

1. For each goal, please prepare a document describing the goal model, including the equation, an explanation of the variables, and the data layer name for each variable
2. For each data layer, 

  + 2a. please provide separate *.csv* files for data layer
  + 2b. please provide separate description files for each data layer
  
3. For pressures and resilience:
  + 3a. please add columns to the matricies for any pressures or resilience measures in china 
  + 3b. please update the pressures matrix rank weights for any added pressures
  + 3c. please format pressure and resilience layers as described in 2) above


## 1. Description document for each goal 

Please prepare a document with the following information. This will help our understanding and can be used in the China OHI Evaluation Manual you are preparing. 

1. Goal model equation
2. Explanation of each variable
3. Data layer name for each variable
4. Written description of each goal model. This should include some or all of the following: 
  + why the goal models were changed (or not changed)
  + why some data were included and other data weren't
  + any data limitations that also limited the model
  + what data would ideally be available and how that could improve the model
  + ...

## 2a. *.csv* files for each data layer

Each file containing data in the proper format for the OHI Toolbox is called a `data layer`.

### Contents of data layers

Finalized data layers have at least two columns: the `rgn_id` column and a column with data, that is best identified by its units (km2 or often score). There also may be a `year` column or a `category` column (for natural product categories or habitat types). The 'region identifier' (`rgn_id`) column has numbers identifying each province in China, numbered from north to south. You can explore the identifier numbers at [https://ohi-science.org/chn/regions]. Note: the OHI China team may modify the which number is associated with which province, however, it is important that there is consistency across all data layers because the OHI Toolbox calculates scores based on `rgn_id`.

An example of a data file is `ao_access_gl2014.csv`:

```
"rgn_id","value"
1,0.555771907253878
5,0.555771907253878
4,0.555771907253878
2,0.555771907253878
3,0.555771907253878
```

### Naming data layers

Please name each data layer with the following format so it is easy to keep all data organized:

> prefix_layername_scenario_suffix.extension

There cannot be any white spaces in any part of the filename: instead, use underscores ('_').

The **prefix** will be the letters identifying each goal (two letters) or sub-goal (three letters):

Goal | Code | Sub-goal | Code
---- | ---- | -------- | ----
￼Food Provision | FP | Fisheries | FIS
 | | | Mariculture | MAR
Artisanal Fishing Opportunity | AO
Natural Products | NP
Coastal Protection | CP
Carbon Storage | CS
Livelihoods and Economies | LE | Livelihoods | LIV
 | | | Economies | ECO
Tourism and Recreation | TR
Sense of Place | SP | Iconic Species | ICO
 | | | Lasting Special Places | LSP
Clean Waters | CW
Biodiversity  | BD | Habitats | HAB  
 | | | Species | SPP

The **layername** should be made of words or abbreviations to identify what the layer is. 

The **scenario**should identify the assessment scenario: **chn2015**. This will help separate updated data layers from global data layers ('gl2014').

The **suffix** of the filename should identify who prepared the data so any questions can easily to sent to the correct person. For the suffix, please identify yourself with your initials.

The **extension** identifies the filetype and is separated by a period (.). You must save your files as comma separated values (*.csv*) since this is the format used by the OHI Toolbox. You can work in Excel and after data are formatted properly, it is possible to save as a *.csv* instead of a *.xlsx* file.  

Here is an example of a properly named data layer for the  tourism and recreation goal, where the data are the percent of unemployment prepared by Julia Lowndes.

> tr_unemployment_chn2015_JL.csv


## 2b. Description files to accompany each data layer

Please write a document to accompany each data file. Please save the document as a *.txt* file or a *.pdf* file, but not a Word document (*.docx*).

Each document should have the following information: 

1. Filename of the data layer
2. Identify the target for this data layer: goal, sub-goal, pressures, or resilience
3. Short title of the data layer (for the 'name' column in `layers.csv`)
4. One-sentence explanation of the data layer (for the 'description' column in `layers.csv`)
5. Long description of the data layer that includes: 
  + any data manipulation that has occurred, how to interpret it, and why (e.g. rescaling from 0-1)
  + any further data manipulation required, how to interpret it, and why
6. The data source: 
  + the institution that collected the original data
  + the institution providing the data (if different from the original) 
  + the year it was accessed
  + the URL or publication reference
7. The years of data available
8. The units of data
9. Any other observations or explanations about the data

## 3. Pressures and resilience

Remember that for any pressures and resilience measures included in the OHI matrices, there must be data available for each province in China.

### Pressures

Several pressures layers are based on 1km2 resolution spatial files that Ning can extract for China's provinces. These layers are:

* ocean acidification (cc_acid)
* sea level rise (cc_slr)
* sea surface temperature (cc_sst)
* ultra violet radiation (cc_uv)
* nutrient pollution (po_nutrients)
* chemical pollution (po_chemicals)

### Resilience

Resilience measures are often regulatory measures that indicate how provinces are performing compared with each other. If there are any environmental or social performance indicators for China, these could be used here. 


