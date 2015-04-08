##Example of Food Provision

> Draft updated 03-31-15

Here are some questions to help countries think about how they might modify their Food Provision models. The data questions help identify modeling options and are mainly aimed at technical experts. The reference point questions are philosophical choices that should involve high-level decision makers on the team. The reference point options, however, are constrained by what data are available, so it would be ideal to have both types of experts present in the discussion.

##Fisheries
**Data and stock status models:**  

Depending on what kind of data and information you have on fished species (catches, bycatch, landings, CPUE, population models, life history traits, fishing pressure), you might be able to assess the state of stocks in different ways. The best case scenario is when there are formal stock assessments that have established reference points and evaluated the stock's condition.  

**Assessed stocks - i.e., stocks for which a formal stock assessment exists.**

- Do you have a set Maximum Sustainable Yield (MSY), or biomass at maximum sustainable yield (Bmsy)?
- Do you know the fishing effort needed to harvest at MSY?
- Do you have official catch statistics, or catch per unit effort (CPUE)?
- How many years of data are in your catch time-series?

**Unassessed stocks**

*We recommend using at least two different data-poor models for unassessed stocks.
 Then you should ask yourselves these questions to help interpret the results:*

- Are there fisheries for which harvest regulations were put in place for certain years?
- Are there bycatch regulations, such as for which species may be caught or which gear may be used?
- Are there fisheries that were abandoned because of loss of market value?
- Are there fisheries with high market value that are still profitable even if CPUE declined?
- Are there specific issues with under-reporting or unregulated, unreported illegal fishing (UUI) that can be taken into account?
- Are there strong environmental effects you're aware of that might be driving population abundances, independently of fishing pressure (e.g., El Niño years)?

**A few things to remember**  
1. *The STOCK as the unit:* For this model the focus needs to be the state of a stock, not of the portion of stock fished in your region. If B/Bmsy of a transboundary or highly migratory population is low, even if the fleet of the region of interest only harvests a small part of it (e.g., other fleets are probably responsible for most of the depletion that occurred), it should be penalized for imposing fishing pressure on a resource that needs rebuilding.  
2. *Use the STOCK catch time-series:* As a consequence of point 1, if using a data-poor model based on catch to determine stock status, make sure the spatial scale of the catch time-series is appropriate (meaning, it captures the whole stock or at least most of it). Local landings or catch data are usually more accurate than the global OHI data, and should be used for the relative weight of each stock (i.e., how much it contributes to the overall score). But local landings data may be less accurate to calculate stock status if they only represents a small fraction of the total catches of the population you're trying to assess. In the case of stocks that are highly migratory and fished by many fleets, global data may be preferable (or the respective RFMO data, where appropriate).  
3. *Use expert opinion for the SCORE, not B/Bmsy:* In some cases, it is not possible to obtain a reliable B/Bmsy score, but there is sufficient expert knowledge on the stock to draw some conclusions on whether it deserves a full 'score' or not in the calculation of the fisheries model. For example in a case where catches fluctuate due to environmentally-driven effects on stock abundance, but there are no signs of overfishing. In this case it may be too difficult to have a reliable estimate of Bmsy, but it is known that effort is always at or less than Fmsy. Therefore the stock could be assigned a score of 1, despite the true value of B/Bmsy is unknown.  
4. *Interpret data-poor model results with care:* If catch goes down for reasons other than overfishing--for example, due to declining effort because of market dynamics, or because of management restrictions, or due to lower population abundance caused by environmental phenomena or food-web dynamics, the model may under-estimate B/Bmsy. On the other hand, if catch goes down due to stock depletion, and the model assumes incorrectly that this is due to a decline in effort, F, the model may over-estimate B/Bmsy. Using a combination of different data-poor models can help disentangle these instances.  

**Reference point:**
- What are the official management targets for sustainable fisheries? For example, is a fishery at 90% of Bmsy considered 'sustainable'? What about 50%?
- What are the thresholds for 'under-fishing'?  
Generally managers don't set 'underfishing' targets, and don't have any formal definitions of it. Instead, you most likely will need to set this threshold yourself. The rule of thumb is that if you want this indicator to have a strong conservative philosophy, you'll probably want to consider things to be underfished when B/Bmsy exceeds 1.5 (e.g., as was done in the U.S. West Coast assessment), while if you're only moderately conservative, because feeding people now is a high priority, then your threshold may be set closer to 1 (e.g., as was done in the Fiji assessment). If you want the goal's philosophy to match the current thinking in management, you may ask: is the main focus of managers to conserve resources and set very precautionary fishing measures, or to incentivize fishing and consuming under-utilized fisheries? But some stake-holders may disagree with current policy, and you might want to design the index to reflect these other perspectives.

**Additional checks:**

*Compare the list of species for which you have data with the species identified in the OHI global data:*

- Are there any species in the OHI global data that you don’t have in your own data? This could be due to an error in the OHI global data, but it might be worth double-checking to see if there are any records for the relevant fisheries. This is worth doing especially if the species involved are commercially valuable.
- Are there any species for which informal assessments exist? They can be used to check the data-poor model outputs.

*If using resilience values from literature to parameterize CMSY:*
- Check they come from the correct source before converting to categorical values: are they r_m, r_max, or something else?


---

##Mariculture

####Potential information you could gather:

*General tips:*
- Re-do your own sustainability ranking. This is useful specially if there are few species, and if they were not originally assessed in the MSI (Trujillo, 2008).
- Use national data on harvested tonnes. Data at this scale may be more accurate than that international FAO data.

*Spatial information:*
- Do you have data on the specific regions where species are being cultivated? Do you have maps of where they’re cultivated?
- Are there regulations for which sites can be cultivated? For example, are there required levels of water quality for mariculture?
- Do you have maps of where sites are allowed?
- Do you have any information on production density?

** Reference point: **

*Based on what information you gather, and on what is known of the species, you might be able to have a reference point for maximum sustainable productivity. For example, this may be possible for bivalves if you know cultivation density.*

- Are there any official management objectives for mariculture? For example, is there a plan to increase mariculture by a certain target? Are there areas that should be banned from mariculture because they should be reserved for other uses?
- Does it make sense to use population density as a measure for mariculture need?
- Does it make sense to use China as a reference point?

**Additional checks:**

*Compare the list of species for which you have data with the species identified in the OHI global data:*
- Are there any species in the OHI global data that you don’t have in your own data? This could be due to an error in the OHI global data, but it might be worth double-checking to see if there are any records for the relevant fisheries. This is worth doing especially if the species involved are commercially valuable.
