#### Practical Considerations

#### *Ideal Approach*

Ideally, quantity, value, and a sustainability rating of the harvest method would be available for every marine and coastally-derived natural product within the regions of a study area. This could include a wide range of products depending on what is harvested in the study area, including corals, shells, seaweeds, aquarium fish, mangrove wood, or any non-food marine product that is harvested within a region. The ideal reference point would be derived from a functional relationship of the sustainability of the harvest for each product relative to the amount of product available in the ecosystem, informed by scientific studies. Without such information, assumptions and expert judgment will need to be made to set the reference point.

#### Ready to start on **Natural Products**?

Whether you use the approach from the global assessment or are developing your own new model entirely, there are a few tasks that will remain the same because are key to the philosophy of this goal.

The first is to identify **identify which products are in your study area.** For example, does your study area have corals, ornamental fishes, sponges? Does your area yield medicines from the sea, that are not used for nutrition under **Food Provision**? Does your area harvest drinking water from the ocean through desalination plants? Is there a kelp or seaweed industry in your area?

Study | Natural Products considered | Data Source
-------|-----------------------------------|--------------
Global 2013 | aquaria fishes, corals, sponges, shells, seaweeds, fish oil | UN FAO database
U.S. West Coast (2013) | kelp considered, not included | NA
OHI+ China | seasalt, medicine, chemicals | China Statistical Yearbook 2014
OHI+ Israel | desalinated water, not included | ???

The second task is to think about **where these products are harvested and how much of them are harvested** in these areas through a period of time. You should find spatial representation of these products, which can be done by knowing where they are derived from. Do they come from certain habitats (in the case of coral) or animals (in the case of fish oil)? This information will help calculate the sustainability of the harvest of eah natural product.  harvest amounts and the spatial data are used to calculate **exposure** further on, and can also be used to set the **relative weighting** between the products. These spatial data may have already been used in other goals, or they may lead you to find useful data that can be used in other parts of the assessment (See **Best Approaches**).

> TIP: The data layer, `hab_extent` is used here and in other goal models in the default code for the Global Assessment.

It should be noted that in the Global Assessments, the harvested amounts are derived from the information from the Food and Agriculture Organization of the United Nations (FAO), and these are combined with habitat values used elsewhere in the assessment. You should be conscious of this as you go through the model and change it, because you may be able to simplify aspects of the code such as gap-filling.<!---I'm not sure we want to get into global data and gapfilling here if this goes at the beginning--->

<!---deleted because was confusing--->

The third component is to try to find the **sustainability** coefficients of the identified products. These could be given values, in which case you would simplify the model, or they could be derived from two factors, **exposure and risk**. The **exposure** will come from the spatio-temporal harvest amount data already prepared, and the **risk** will come from the scientific literature or a developed indicator. For both of those cases, the values can be calculated in separate equations as part of your data preparation process.

![Natural Products goal model from OHI Global Assessment 2013](https://docs.google.com/drawings/d/1JFU166u9J8-bYDxeEJPKoZjHOnUtOsz4GlsxlMgKsQo/pub?w=594&h=100)

<!---since the Global2012 approach wasn't good let's not highlight it here--->

> Global assessments borrow principles from fisheries science to make estimates of product sustainability. In the Global 2013 assessment the sustainability component was derived from the historical maximum harvest recorded, the maximum harvesting density recorded, and risk status assessments by the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES).

One very important thing to consider at this point is your **reference point for the relative harvest amount**. The relative harvest of your data is multiplied by the sustainability coefficient in the last step. Setting the reference point is a decision your team must make based on the available data and an inferred functional relationship between the harvest of the product and the amount in the system. Understanding the patterns in harvest can help inform how to set the reference point. For example, knowing whether harvesting effort was constant or whether product yields changed due to the market demand and not the availability. This information could help inform whether it is more appropriate to set the reference point as the peak yield of the timeseries, or some percentage above or below, or some other approach that is ambitious yet realistic (SMART principles). <!---the average isn't a good approach so I've cut it. What I've written here isn't complete I don't think but it's closer to what we want-->

[insert an image of trend in total harvest vs time?]

Example: The Global assessment used the following information in the Natural Products equations:

product | relative tonnes (1) | weighting (2) | Exposure (3) | Risk (4)
----------|---------------------|-------------|--------------|------
coral | FAO |  FAO | coral habitat | all 1
sponges | FAO | FAO | coral + rocky reef habitat | all 0
ornamentals | FAO | FAO | coral + rocky reef habitat | 1 if blast/cyanide fishing, otherwise 0
fish oil | FAO | FAO | fish score/100 | --
shells | FAO | FAO | coral + rocky reef habitat | all 0
seaweeds | FAO | FAO | rocky reef habitat | --

#### What's the code trying to do?

[check!]<!---This section is a good idea. But I think we'll want to split it into a different section after the Tbx is introduced.
Check this section, please--->

You may have already looked at the **NP** section of `functions.R`. In simple terms, here is what the code is doing:

* It pulls out the appropriate data layers to find out the amount of each product per unit area. It does gap-filling as necessary for the Global data.

> Note that "amount" here could be dollar amount or physical tonnage, depending on your situation -- these two variables are sometimes used interchangeably in assessments as a means of gap-filling.

* It calculates Exposure by finding how intensely each identified product is being harvested (amount of product per km^2), and then transforms this from a scale from 0 to 1.

* In parallel to this, it finds the Risk of each product based on a scoring system that becomes binary: 0, or 1.

* It then averages the two factors, Exposure and Risk, to reveal where risk and intensity are highest. This value is then inverted to become Sustainability and to reward lower intensity and lower risk.

* The amount of each kind of product, relative to the total amount [of?], is multiplied by the sustainability coefficient to create sustainability-weighted scores for all regions and all years available.

* The latest year value is used in the status, and the past few years' values are used in the trend to produce the final score.

<!---I think this diagram is more confusing than explicative because it implies these data are spatial, but not all of them are--->
![Diagram of calculation, NP](https://docs.google.com/drawings/d/1cHTBz55p2ZoAM3tSbpLRHIWdfHZlUg2AqjX2xMvz8Po/pub?w=960&h=720)
**Figure.** Diagram of sustainability calculation, NP.


#### Data Sources

If the case is that corals, sponges, and  then you might be able to use FAO data, which is the data source of the Global Assessments. Otherwise, you will have to find comparable data in your area or consult local statistical offices and local fisheries managers to get harvest values similar to landing values and any other kinds of stock assessments. The IUCN offers quantified assessments of risk to species, but that is more appropriate for biodiversity; CITES signatory data may be more appropriate for the trade products. Exposure can be calculated spatially, and for this you should be able to find or produce your own maps if possible. Your maps might have finer resolution than those in global resolution.

#### What are other considerations?

Coming soon.

<!---Below will be erased eventually--->
### Appendix - source materials
#### Recommendations for regional assessments

The kinds of marine products included, and how much should each contribute to the overall score may vary from case to case and should be decided based on the data available (see model details below in Evolution of the Approach). For example, if seaweed is a natural product, but it is also food, if there are no data to indicate the proportions of these two uses, some other source of information will have to be used to decide what proportion should be used to calculate Food Provision and what proportion should be computed for Natural Products. As another example, oil from marine mammals was excluded from the models presented here, but if a region has a considerable amount of mammal oil harvest, they should include it in the calculation, keeping in mind that the sustainability of this type of harvest is likely to be low and should be reflected in the score.

It is possible to measure sustainability in a number of different ways. Quantitative information can be used, or expert judgment, perhaps based on information or rough estimates of how sustainable the harvest method is, which is what was done in Global 2012. We based the sustainability component on the historical maximum harvest recorded, the maximum harvesting density recorded, and risk status assessments by the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES).  In the absence of these, we borrowed general principles from fisheries models to provide rough estimates.


#### Appendix - Global Data Approach (Technical Notes)

**Data Overview**

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

#### Calculation
For each product:
sustainability = 1- average(exposure, risk)
Prod_score = sustainability*relative tonnes

Then take a weighted average of the Prod_score using the "weighting" file.

#### Notes on modifying the function
1. Several data layers are called that are not used: np_harvest_tonnes, np_harvest_usd, np_harvest_usd_relative

#### Preparing the Data

Notes from Katie while updating the NP goal:

Natural products
**harvest:**
- explore simplifying gap-filling: use correlation model of dollar value vs harvested tonnage, while discarding the part of script using dollar ratio (curr dollar value/peak dollar value) as a gap-filler for harvest ratio
- switch the gap-filling order: using the dollar value correlation model first (in cases where the most recent year has no harvest reported but has dollar value reported, that’s a better estimate than using the harvest from the previous year), then gap-fill any remaining cases of missing harvest for the current year with harvest from the previous year

**sustainability:**
- check cases where country-product pair has 0 for sustainability score, but relatively high harvest ratio (curr harvest/peak harvest) – it may be a flag that the sustainability score is off (eg because the habitat area is off)


#### Tech Specs

**Updating the Script**

I just pushed a new script, `data_prep_2015a.R`, and the resulting outputs to `ohiprep/globalprep/fao_commodities/v2015`.  The new script reworks the gap-filling, based on Mel's and Katie's suggestions.  I'll post later about the smoothing and calculations based on new input from Katie, but would love to get input on the gap-filling first.
* Before gap-filling, binds the USD and tonnes data for all natural products at the commodity level (rather than product level).
* By commodity & year: Identifies years with neither USD nor tonnes data, flags as `no_data`, and determines first reporting year based on first year with either data (and deletes years prior to this).
* By commodity & year: Gap-fills according to these rules:
    * If `no_data`, and not the last year of data set, assume that non-reporting means zero harvest; replace `NA` with `0` for both USD and tonnes
    * Create regression models for `(tonnes ~ USD)` and `(USD ~ tonnes)`
        * Exclude NAs (these will be in either USD or tonnes, but not both)
        * Remove all commodities with fewer than four non-zero observations (within a particular region)
            * not enough info for a decent regression or meaningful peak
            * counting these could also penalize experimental production that later stops
        * Use `lm()` to generate slope/intercept, and gap-fill all NAs with the appropriate regression model
        * Regression gap-filling takes care of the most current-year gaps, per Katie's comment
        * Regression gap-filling fails for certain data, where there are no paired observations for correlation (e.g. every reported value for USD shows NA for tonnes, and/or vice versa), still need to figure out how to deal with those without losing useful data.
    * If `no_data` appears in most recent year of data set, not applicable for regression gap-fill, so end-fill based upon the prior year.
    * Outputs a .csv with rgn_id, commodity, product, year, and gapfill method at the commodity level.  I made up text codes for now, pretty self-explanatory, but those are easy to change.  File is `data/np_gapfill_report.csv` if you want to take a peek.
* Collapses commodities into products at this point, in preparation for smoothing, finding peaks, and determining status and weighting.

Latest on NP:
in ohiprep/globalprep/FAO-commodities, new (well, a week or so ago) data_prep2015.R that fixes:
* the FAO data cleaning, so treats '0 0' as 0.1 instead of NA
* gap filling:
    * it runs at commodity level instead of product level
    * gapfills between USD and tonnes in sequence: local regression, then georegional regression, then global regression.
    * does all that before end-filling.
    * produces a gapfilling report for every commodity/region/year.
Currently this outputs a single file; needs to be updated to output individual files for tonnes, tonnes_rel, and prod_weight.  Needs to be renamed to data_prep.R.

In ohi-global/eez2013, LSP_update branch, I've updated /conf/functions.R - cleaned up (dplyr, etc), chunked into sub-functions.  Questions that need to be addressed:
* currently calcs trend using last five years of data (year_max >= year > year_max-5), which means only four intervals for the regression.  I think we want to include the (year_max - 5) data, for five intervals, so: (year_max >= year >= year_max-5).
* currently, for regions with exposure = NA, replaces NAs with zero.  Should these be replaced with one instead?
    * Exposure for these indicates harvest intensity (tonnes/km^2) relative to the region with the max harvest intensity.  
    * NAs occur when a country hasn't reported area values for rocky (seaweeds), coral (corals), so tonnes/NA = NA.
    * Setting exposure to zero means intensity = none at all (boosting the status); leaving as NA removes from calculation (ignored in status); setting to one means intensity = worst case (penalizing the status).

Almost there!
