## Formatting Data for the Toolbox

### Introduction

The Ocean Health Index Toolbox App is designed to work in the programming language **R** using input data stored in text-based .csv files (.csv stands for 'comma-separated value'; these files can be opened as a spreadsheet using Microsoft Excel or similar programs). Data layers (data input) each have their own .csv file that are combined within the Toolbox in model calculations. These data layers are used for calculating goal scores, meaning that they are inputs for status, trend, pressures, and resilience. In the global analysis, there were over 100 data layer files included, and there will be as many in regional applications, no matter what the spatial scale. This document describes and provides examples of how to format data for the Toolbox App.

Ocean Health Index goal scores are calculated at the scale of the reporting unit, which is called a ‘**region**’ and then combined using a weighted average to produce the score for the overall area assessed, called a ‘**study area**’. The OHI Toolbox App expects each data file to be in a specific format, with data available for every region within the study area, with data organized in 'long' format (as few columns as possible). In order to calculate trend, input data must be available as a time series for at least 5 recent years (and the longer the time series the better, as this can be used in setting temporal reference points). 

It is important that data prepared for the Toolbox App have no missing values or 'gaps'. Data gaps can occur in two main ways: 1) **temporal gaps**: when several years in a time series in a single region have missing data and 2) **spatial gaps**: when all years for a region have missing data (and therefore the whole region is 'missing' for that data layer). How these gaps are filled will depend on the data and regions themselves, and requires a thoughtful decision to most reasonably fill the gap. Each data layer can be gapfilled using different approaches. Some data layers will require both temporal and spatial gapfilling.

In the example below, there are two data layers (tourists_count and jobs_tourism_count) that have data for four regions, A - D. In this example, the two data layers are appropriate for status calculations with the Toolbox because:

1. At least five years of data are available, 
2. There are no data gaps
3. Data are presented in 'long' or 'narrow' format (not 'wide' format).

**Example of data in the appropriate format:**

![](./fig/formatting_data_example.png)

If there is insufficient data, see the sections below to see examples of gapfilling. For more information about types of gapfilling, see the supplementary  methods used in the 2013 global assessment, available on http://ohi-science.org/.


### Temporal gapfilling

Temporal gaps are when some data are available for a region, but there are missing years. The Toolbox requires data for each year for every region.

![](./fig/temporal_gaps.png)

Many times, creating a linear model is the best way to estimate data and fill temporal gaps. If data do not fit a linear framework, other models may be fit to help with gapfilling. Here we give an example assuming linearity.

Using a linear model can be done in most programming languages using specific functions, but here we show this step-by-step using functions in Excel for Region A.

#### **Steps to temporally gapfill data (assumes linearity):**

##### 1. Calculate the slope for each region.

The first step is to calculate the **slope** of the line that is fitted through the available data points. This can be done in excel using the SLOPE(known_y's,known_x's) function as highlighted in the figure below. In this case, the x-axis is in years (2005, 2006, etc...), the y-axis is in 'tourist_count', and the excel function automatically plots and fits a line through the known values (177.14 in 2005, 212.99 in 2008, and 228.81 in 2009), and subsequently calculates the slope (12.69).

![](./fig/filling_temporal_gaps_slope.png)

##### 2. Calculate the y-intercept for each region

The next step is to calculate the **intercept** of the line that is fitted through the available data points. This can be done in excel similarly as for the slope calculation, using the the INTERCEPT(known_y's,known_x's) function that calculates the y-intercept (-25273.89) of the fitted line as highlighted in the figure below.

![](./fig/filling_temporal_gaps_intercept.png)

##### 3. Calculate y for all years

The slope and y-intercept that were calculated in steps 1 and 2 can then be used along with the year (independent variable) to calculate the **unknown 'y-values'**. To do so, simply replace the known three values into the y = mx + b equation, as illustrated in the figure below, to calculate the unknown 'tourist_count' for a given year (189.39 in 2006, and 202.08 in 2007).

![](./fig/filling_temporal_gaps_value.png)

##### 4. Replace modeled values into original data where gaps had occurred.


Data layer is now ready for the Toolbox, gapfilled and in the appropriate format.


### Spatial gapfilling

Spatial gaps are when no data are available for a particular region.

![](./fig/gapfilling_spatial.png)

To fill gaps spatially, assumptions must be made that one region is like another, and data from another region will be substituted in place of the missing data. 

Depending on the data, this can be done simply by assuming that two regions are similar enough that their data could be exactly copied, or a proportion of those values could also be applied. This will depend on the type of data, and the properties of the region. Each data layer can be gapfilled using a different approach when necessary.

#### Characteristics of a region that can influence spatial gapfilling:**

1. proximity: can it be assumed that nearby regions have similar properties? 

2. larger regions: Are data reported in larger regions and can those data be used for subregions?

3. demographic information: can it be assumed a region with a similar population size has similar data? 


#### Spatial gapfilling example

To spatially gapfill Region B requires thinking about the properties and characteristics of the region and the data, tourists_count. 

Here are properties that can be important for decision making:

Region B:
- is located between Region A and C
- is larger than Region A
- has similar population size/demographics to Region C
- has not been growing as quickly as Region D

There is no absolute answer of how to best gapfill Region B. Here are a few reasonable possibilities:

Assign Region B values from:
- Region A
- Region C
- Region A and C averaged 

In the example below, the decision was made to gapfill Region B using the mean of Regions A and C since this would use a combination of both of those regions. Again, other possibilities could be equally correct. But some form of spatial gapfilling is required so a decision must be made.

![](./fig/gapfilling_spatial_example.png)

Data layer is now ready for the Toolbox,  gapfilled and in the appropriate format. 
