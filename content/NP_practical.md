##Natural Products
##Practical Considerations

###*Ideal Approach*:

Ideally, quantity, value, and the sustainability of the harvest method would be available for every marine and coastally-derived natural product within a region. This would include a wide range of products, including corals, shells, seaweeds, aquarium fish, mangrove wood; any non-food marine product that is harvested within a region. The ideal reference point would be a functional relationship of the sustainability of harvest for each product; without this information assumptions will need to be made to set the reference point.

*****

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


**History of the Approach (lessons learned 2014)**
<!---Taken from Conceptual Guide v2--->

This goal model calculates overall status by weighting the status of sustainable harvest of each extracted marine product by its proportional value relative to other harvested products.

###Recommendations for regional assessments

The kinds of marine products included, and how much should each contribute to the overall score may vary from case to case and should be decided based on the data available (see model details below in Evolution of the Approach). For example, if seaweed is a natural product, but it is also food, if there are no data to indicate the proportions of these two uses, some other source of information will have to be used to decide what proportion should be used to calculate Food Provision and what proportion should be computed for Natural Products. As another example, oil from marine mammals was excluded from the models presented here, but if a region has a considerable amount of mammal oil harvest, they should include it in the calculation, keeping in mind that the sustainability of this type of harvest is likely to be low and should be reflected in the score.

It is possible to measure sustainability in a number of different ways. Quantitative information can be used, or expert judgment, perhaps based on information or rough estimates of how sustainable the harvest method is, which is what was done in Global 2012. We based the sustainability component on the historical maximum harvest recorded, the maximum harvesting density recorded, and risk status assessments by the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES). Ideally, both the maximum sustainable harvest levels and the sustainability coefficient would be based on functional relationships obtained from specific studies. In the absence of these, we borrowed general principles from fisheries models to provide rough estimates.

####Model description

**Global 2012:**
For the status of each product, we assessed the most recent harvest (in metric tons) per region relative to a fraction of the maximum value (in 2008 USD) ever achieved in that region. This was under the assumption that the maximum achieved at any point in time was likely the maximum possible, and that the sustainable maximum harvest was lower than that value, similarly to what is known about maximum fisheries harvests (Srinivasan et al., 2008). The status for each natural product category is calculated separately and then combined by weighting each category by the proportional value of that product relative to the total value of all products. Part of the status calculation for each product category is a measure of sustainability; the goal captures exposure, risk, and viability of harvesting the product.

**Global 2013:**
This used the same approach as Global 2012. Data processing did change however; see below in Evolution of the Approach.

**Brazil:**
This used the same approach as Global 2012.

**US West Coast:**
The Natural Products score was not calculated because there are few data available on local-scale harvest and this is currently no longer pursued in any measurable quantities, and in the past had occurred mostly in the southern California region. Given this situation, the two options for how to include this goal in the assessment were to give the southern California region a zero (lowering the overall Index score), or to have the goal drop out completely of the assessment. The former option would assume there was demand for seaweed that was no longer met because the resource had been depleted, the latter assumes there is not enough demand for seaweed to make it commercially viable and so it is no longer harvested. We felt the latter was a more likely scenario.

####Evolution of the approach:

**Global 2012:**
Natural products data were available for coral, ornamental fish, fish oil, seaweeds and marine plants, shells, and sponges from the UN FAO. Using these data, we weighted each category by the sustainability of harvest. We did not have data for other key natural products such as wood from mangroves, and we excluded oils from mammals as they are widely seen as (currently) unsustainably harvested due to low mammal populations. Mammal oils represented a small (~<2%) and decreasing amount of total oil harvest each year (since 1993 it has been well below 1%), although for some regions it remains a significant percent of total oil harvested.

**Global 2013:**
We used the same data and basic approach as for Global 2012, but developed several methods to fill gaps in data that resulted from inconsistencies in the data reported to FAO. In particular, many regions only report either data on harvest or on the monetary value of each product for a given year, but not both. Since the score is computed as a weighted sum of individual product scores, if either the weight or the product score was 0, these mismatches in reporting would cause products to ‘drop out’ of the calculation of overall status, thus losing real data.  The gap filling methods we developed estimated the US dollar value of harvested products from the tonnage reported; or the tonnage harvested based on a product’s reported economic value.

**Brazil:**
This used the same data and approach as for Global 2012.

**US West Coast:**
Not included in US West Coast; this assessment therefore had only 9 goals that all had equal weighting.

####The reference point:

**Global 2012:**
The reference point for Natural Products was based on the fisheries concept of maximum sustainable yield (MSY), applied to the extraction of natural products. MSY was assessed for each type of product quantified globally, and a temporal (historic benchmark) reference point for each product was defined as 35% below the maximum harvest that had been produced to date in the region being evaluated. The 35% buffer protects against the possibility that the maximum historical harvest was not sustainable. A high score indicates that a region’s current sustainable rate of harvest is near to and not more than 65% of the historic maximum possible sustainable harvest achieved in that region.

**Global 2013:**
Same approach as Global 2012.

**Brazil:**
Same approach as Global 2012.

**US West Coast:**
Not included in US West Coast.

####Interpreting a score:

A score of 100 would indicate that a region’s natural product yield equals 65% of its historic maximum. A low score indicates that a region has the potential to improve sustainable harvests of natural products, either by eliminating overharvesting, increasing harvests that are too low, or reducing the pressures that decrease potential harvests. The more natural products extracted sustainably, the higher the score, provided that the harvest does not exceed the 65% precautionary level.
