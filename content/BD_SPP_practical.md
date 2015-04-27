##Biodiversity
###SPECIES
##Practical Considerations

###*Ideal Approach*:

Ideally, data would be available on the number of species, their habitat range, and assessments of their population or conservation status. The type of reference point used will depend on the data available.


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
[Species.pptx | uploaded via ZenHub](https://files.zenhub.io/553176e6fe51d46838aabe9f)

*****

###Comparing SPP and ICO

General Issue: SPP and ICO use different models for the OHI eez analyses (but not for HS and Ant).  We are exploring whether we should modify the SPP or ICO model.

ICO status is calculated by taking the average of the IUCN ratings for all the iconic species in the EEZ.  

SPP status takes into account the IUCN score and the area that the species occupies (although the results are not exactly equivalent to an area weighted average).  Specifically, the values are calculated at the spatial scale of the raster cells (which I believe is at 0.5 degree resolution).  For each raster cell, the IUCN scores of the species are averaged to get a score. To get status, the raster cell scores within an EEZ are then averaged (after weighting for the area of the raster cell).  

### The SPP (cell-averaging) method of calculating status

The original logic was to represent the species present relative to the proportion of their range within a given EEZ.  We may also have wanted to avoid penalizing a region too heavily if only a very small portion of the range came from a very threatened species.  I think we were also worried about bad aqua maps data that could misallocate species into a country and having a big effect.

A disadvantage is that rare species (and those with contracting ranges) will have a relatively small influence on the score.  Common species will, in most cases, drive the results.

An advantage is (actually a disadvantage of averaging species scores at the EEZ level): "The bigger an area, the more likely you are to find rare at risk species (the classic problem of species-area relationships or SARs) - so bigger countries would have lower diversity scores just as a function of their size but not actual poorer biodiversity. In regards to sampling effort, the number of rare species increases faster than the number of common species, so they would not even each other out."

### Current plan

For now, we are going to calculate SPP using both methods and evaluate (or present both).  

***
=======
 [Species.pptx | uploaded via ZenHub](https://files.zenhub.io/553176e6fe51d46838aabe9f)

*****

##**History of the Approach (lessons learned 2014)**
<!---Taken from Conceptual Guide v2--->

####Model description

Global 2012:
For the Species sub-goal, we used recent assessments by the International Union for Conservation of Nature (IUCN)- Global Marine Species Assessment of the extinction risk status of 2377 species for which distribution maps also exist across a wide range of taxa to provide a geographic snapshot of how total marine biodiversity is faring, even though it is a very small sub-sample of overall species diversity. The status of assessed species was calculated as the area- and threat status-weighted average of the number of threatened species within each 0.5 degree grid cell. Species distribution and threat category data came from the IUCN Global Marine Species Assessment results.

Global 2013:
Same as Global 2012. However, see Evolution of the Approach for discussion of how data updates can affect goal scores.

Brazil:
The status of assessed species was calculated as the threat status-weighted average of all species occurring in the Brazilian EEZ (we did not weight by area of occurrence as in Global 2012 because distribution maps were not available for all species at the time of this assessment). The sub-goal was therefore calculated at the national level, giving equal weight to all species occurring in Brazilian waters. Threat weights were assigned based on the IUCN threat categories status of each species.

US West Coast:
Same as Global 2012.

####Evolution of the approach:

**Global 2012:**
We did not include ecological integrity measures as they are based on the same data used to calculate Status and Trend.

**Global 2013:**
Updates were available for data used for this goal.  It is important to note that extinction risk estimates for significantly more species were released in the past year, such that the scores needed to be updated for this sub-goal (and therefore the biodiversity goal overall) for 2012 to reflect improved reporting of species assessments (e.g., data quality). Actual changes in risk status from last year to this year occurred for only 15 of 6080 species, primarily because species are rarely re-assessed; in other words, only when species are reassessed can the status score of this sub-goal change.

**Brazil:**
A list of marine species that occur in Brazil and were evaluated globally under the IUCN Red List assessment process was combined with a list of species assessed regionally in Brazil using the same criteria (Brazilian Red List assessments from Chico Mendes Institute for Biodiversity Conservation; see Data Layers). We substitute global assessments for regional (Brazil-specific) assessments whenever these were available. We had assessments for a total of 504 species.

**US West Coast:**
Data were available at a regional scale, but the approach was the same as Global 2012.

####The reference point:

**Global 2012:**
The target for the species sub-goal is to have all species at a risk status of Least Concern. We scaled the lower end of the biodiversity goal to be 0 when 75% species are extinct, a level comparable to the five documented mass extinctions and that would constitute a catastrophic loss of biodiversity.

**Global 2013:**
Same as Global 2012.

**Brazil:**
Same as Global 2012.

**US West Coast:**
Same as Global 2012, with regional data for the threat categories.

####Interpreting a score:

A score of 100 would indicate that over 75% of species have a ‘least concern’ risk of extinction.
