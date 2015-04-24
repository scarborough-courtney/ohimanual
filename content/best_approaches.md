 ## Best approaches for goals, pressures and resilience

 ## Goals to approach together

- do HAB-based goals together (CS, CP, HAB)
- do FIS and FIS pressure together
- do MAR and MAR pressure together
- also Baltic team's plan of action

****

 - @Melsteroni's sweet NP description and table #370

 ****

 ## Natural Products

 ### Data overview

 product | relative tonnes (1) | weighting (2) | Exposure (3) | Risk (4)
 ----------|---------------------|-------------|--------------|------
 coral | FAO |  FAO | coral habitat | all 1
 sponges | FAO | FAO | coral + rocky reef habitat | all 0
 ornamentals | FAO | FAO | coral + rocky reef habitat | 1 if blast/cyanide fishing, otherwise 0
 fish oil | FAO | FAO | fish score/100 | --
 shells | FAO | FAO | coral + rocky reef habitat | all 0
 seaweeds | FAO | FAO | rocky reef habitat | --

 (1) relative tonnes: tonnes relative to max tonnes for region with 35% buffer.  The maximum corresponds to the year with the highest $ value - but it would probably be better to just base this off tonnes.  When we redo these data lets evaluate this approach.  
 (2) weighting: This weights the contribution of each product according to USD at max year for a region. It makes sense to use $, because comparing extraction weight of sponges vs. ornamentals doesn't make sense.
 (3) Exposure: For fish oil this value is the FIS score (which is a bit different than what is described in the paper because FIS score can have penalties for underfishing).  The other values are determined by:
 log (harvest/habitat area + 1) / log[max(harvest/habitat area) +1].

 The habitat area used for seaweeds: rocky reef
 The habitat area used for coral: coral
 The habitat area used for shells, ornamentals, sponges: coral plus rocky reef

 ### Calculation
 For each product:
 sustainability = 1- average(exposure, risk)
 Prod_score = sustainability*relative tonnes

 Then take a weighted average of the Prod_score using the "weighting" file.

 ### Notes on modifying the function
 1. Several data layers are called that are not used: np_harvest_tonnes, np_harvest_usd, np_harvest_usd_relative

 2. There are these notes that I'm not sure what they mean in function code:
 TODO: add smoothing a la PLoS 2013 manuscript
 TODO: move goal function code up to np_harvest_usd-peak-product-weight_year-max-%d.csv into ohiprep so layer ready already for calculating pressures & resilience

 3. Minor recoding to get away from using reshape and plyr packages

 ### Preparing data


 ###Biodiversity
 ###SPP

 #Biodiversity
 ##Practical Considerations

 <!---Summary of Mel's notes from #366--->

 Here is information about this goal (for the Seaside chats).  I've also attached the power point in case we ever want this.

 ### Biodiversity (BD): Assesses conservation status of species based on two subgoals
 * Species (SPP)
 * Habitat (HAB)

 ### SPP: Based on two primary types of data
 * Distribution of species (IUCN and aquamaps data)
 * Extinction risk status (IUCN data)

 ### Data: IUCN extinction risk status
 ![image](https://cloud.githubusercontent.com/assets/5685517/7187757/bb6e1fe2-e427-11e4-819f-2cd8f3df6a67.png)
 (there are also range maps available from their website)

 ### Data: Aquamaps range maps
 Species range maps are provided at 0.5 degree resolution:
 ![image](https://cloud.githubusercontent.com/assets/5685517/7187777/de90fbde-e427-11e4-8463-195b4932ec27.png)

 ### Calculations
 (I am ignoring the area correction that must be done because 0.5 degree grid cells have different areas depending on latitude)

 * STEP 1: Overlay all species distribution maps

 ![image](https://cloud.githubusercontent.com/assets/5685517/7210756/6c5a57ee-e509-11e4-87c9-01e74fc1594e.png)

 * STEP 2: For each cell, average the risk status of each species (Risk status = 1 - IUCN Weight)

 * STEP 3: For each cell, calculate:
 Condition = 1 - avg risk status

 Then, calculate score based on a reference point of 0.75 (corresponds to an average of 75% of species are extinct, a level comparable to the five documented mass extinctions):

 (Condition - 0.25) / 0.75 * 100

 ![image](https://cloud.githubusercontent.com/assets/5685517/7210872/4ef14d9c-e50a-11e4-8366-26bc5e4a888a.png)

 * STEP 4: Summarize cell values by country boundaries.
 * STEP 5: Calculate trend: Repeat steps 2-4, but instead of using the IUCN risk status, use the IUCN population trend for each species:

 Increasing = 0.5
 Stable = 0
 Decreasing = -0.5

 (This is different from how we calculate most trends where we do a linear model of status over the past 5 years).

 ### Potential limitations
 Score is driven primarily by common species because we are doing something close to area weighted average of the scores (although its not exactly equivalent to an area weighted average).  Consequently, rare species that may have poor status scores do have much influence on the score.

 Possible solution: Average the IUCN status of all species found in a region.  This way rare and common species will have the same weight.  This is how we have been calculating the scores for the iconic species subgoal (after subsetting the species data to include only iconics).

 We will use both methods to calculate scores for OHI 2015.
<<<<<<< HEAD

 ![How the raster cells interpret the species data](https://cloud.githubusercontent.com/assets/10619388/7287365/c41926a6-e908-11e4-8cfb-db2b85cecd38.png)

****
 #### SPP and ICO
-
General Issue: SPP and ICO use different models for the OHI eez analyses (but not for HS and Ant).  We are exploring whether we should modify the SPP or ICO model.

ICO status is calculated by taking the average of the IUCN ratings for all the iconic species in the eez.  

SPP status takes into account the IUCN score and the area that the species occupies (although the results are not exactly equivalent to an area weighted average).  Specifically, the values are calculated at the spatial scale of the raster cells (which I believe is at 0.5 degree resolution).  For each raster cell, the IUCN scores of the species are averaged to get a score. To get status, the raster cell scores within an EEZ are then averaged (after weighting for the area of the raster cell).  

### The SPP (cell-averaging) method of calculating status
The original logic was to represent the species present relative to the proportion of their range within a given EEZ.  We may also have wanted to avoid penalizing a region too heavily if only a very small portion of the range came from a very threatened species.  I think we were also worried about bad aqua maps data that could misallocate species into a country and having a big effect.

A disadvantage is that rare species (and those with contracting ranges) will have a relatively small influence on the score.  Common species will, in most cases, drive the results.

An advantage is (actually a disadvantage of averaging species scores at the eez level): "The bigger an area, the more likely you are to find rare at risk species (the classic problem of species-area relationships or SARs) - so bigger countries would have lower diversity scores just as a function of their size but not actual poorer biodiversity. In regards to sampling effort, the number of rare species increases faster than the number of common species, so they would not even each other out."

### Current plan
For now, we are going to calculate SPP using both methods and evaluate (or present both).  

***
=======
 [Species.pptx | uploaded via ZenHub](https://files.zenhub.io/553176e6fe51d46838aabe9f)


 #### SPP and ICO
- @Melsteroni's SPP ppt from the seaside chat (attached here), and how this relates to Iconic Species too
