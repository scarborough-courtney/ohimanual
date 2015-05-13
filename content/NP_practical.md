#### Practical Considerations

#### *Ideal Approach*

Ideally, quantity, value, and the sustainability of the harvest method would be available for every marine and coastally-derived natural product within a region. This would include a wide range of products, including corals, shells, seaweeds, aquarium fish, mangrove wood; any non-food marine product that is harvested within a region. The ideal reference point would be a functional relationship of the sustainability of harvest for each product; without this information assumptions will need to be made to set the reference point.

#### Recommendations for regional assessments

The kinds of marine products included, and how much should each contribute to the overall score may vary from case to case and should be decided based on the data available (see model details below in Evolution of the Approach). For example, if seaweed is a natural product, but it is also food, if there are no data to indicate the proportions of these two uses, some other source of information will have to be used to decide what proportion should be used to calculate Food Provision and what proportion should be computed for Natural Products. As another example, oil from marine mammals was excluded from the models presented here, but if a region has a considerable amount of mammal oil harvest, they should include it in the calculation, keeping in mind that the sustainability of this type of harvest is likely to be low and should be reflected in the score.

It is possible to measure sustainability in a number of different ways. Quantitative information can be used, or expert judgment, perhaps based on information or rough estimates of how sustainable the harvest method is, which is what was done in Global 2012. We based the sustainability component on the historical maximum harvest recorded, the maximum harvesting density recorded, and risk status assessments by the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES). Ideally, both the maximum sustainable harvest levels and the sustainability coefficient would be based on functional relationships obtained from specific studies. In the absence of these, we borrowed general principles from fisheries models to provide rough estimates.

#### Global Data Approach

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

2. There are these notes that I'm not sure what they mean in function code:
TODO: add smoothing a la PLoS 2013 manuscript
TODO: move goal function code up to np_harvest_usd-peak-product-weight_year-max-%d.csv into ohiprep so layer ready already for calculating pressures & resilience

3. Minor recoding to get away from using reshape and plyr packages

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
