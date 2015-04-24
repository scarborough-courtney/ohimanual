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
