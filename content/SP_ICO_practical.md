### **ICONIC SPECIES**
#### Practical Considerations

#### *Ideal Approach*

Ideally, data would be available on all species that are important to coastal communities, and then a separate assessments would judge the condition of each of the populations. Because almost any species can be iconic to someone, defining which species are culturally iconic can be challenging; information can sometimes be found from local customs and experts, oral tradition, sociological or anthropological literature, journalism and regional assessments. The type of reference point used will depend on the data available.

#### Comparing SPP and ICO

General Issue: SPP and ICO use different models for the OHI eez analyses (but not for HS and Ant).  We are exploring whether we should modify the SPP or ICO model.

ICO status is calculated by taking the average of the IUCN ratings for all the iconic species in the eez.  

SPP status takes into account the IUCN score and the area that the species occupies (although the results are not exactly equivalent to an area weighted average).  Specifically, the values are calculated at the spatial scale of the raster cells (which I believe is at 0.5 degree resolution).  For each raster cell, the IUCN scores of the species are averaged to get a score. To get status, the raster cell scores within an EEZ are then averaged (after weighting for the area of the raster cell).  

#### The SPP (cell-averaging) method of calculating status
The original logic was to represent the species present relative to the proportion of their range within a given EEZ.  We may also have wanted to avoid penalizing a region too heavily if only a very small portion of the range came from a very threatened species.  I think we were also worried about bad aqua maps data that could misallocate species into a country and having a big effect.

A disadvantage is that rare species (and those with contracting ranges) will have a relatively small influence on the score.  Common species will, in most cases, drive the results.

An advantage is (actually a disadvantage of averaging species scores at the eez level): "The bigger an area, the more likely you are to find rare at risk species (the classic problem of species-area relationships or SARs) - so bigger countries would have lower diversity scores just as a function of their size but not actual poorer biodiversity. In regards to sampling effort, the number of rare species increases faster than the number of common species, so they would not even each other out."

#### Current plan
For Global 2015, we are going to calculate SPP using both methods and evaluate (or present both).  
