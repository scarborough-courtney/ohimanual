## Modifying pressures matrices

Your team will identify if any pressures layers should be added to the pressures matrices, and if so, which goals the pressure affects and what weight they should have. You can transfer this information into the Toolbox's `pressures_matrix.csv` (located in the `[assessment]/[scenario]/conf` folder). It is important to note that the matrix identifies the pressures relevant to each goal, and which weight will be applied in the calculation. But each pressure is a data layer, located in the `subcountry2014/layers` folder. This means that pressure layers need information for each region in the study area, and some layers will need to be updated with local data. In modifying pressures, you will need to consider whether data layers can be updated or added, and whether data layers map onto goals appropriately in the local context. 

Adding a new pressure to the pressures matrix requires the following steps:

> 1. Create new pressure layer(s) and save in the `layers` folder
> 2. Register pressure layer(s) in `layers.csv` 
> 3. Register pressure layer(s) in `pressures_matrix.csv`
  + a. Set the pressure category  
  + b. Identify the goals affected and set the weighting
  + c. Modify the resilience matrix (if necessary) 

The following is an example of adding two new pressures layers.

### Create the new pressure layers and save in the `layers` folder

If you will create a new data layer, give it a short but descriptive name that also includes a prefix that signifies the pressure category (for example: *po_* for the pollution category). There are five physical categories and one social category:

* *po_* = pollution
* *hd_* = habitat destruction
* *fp_* = fishing pressure
* *sp_* = species pollution
* *cc_* = climate change
* *ss_* = social pressure  

So for example, `po_trash` is a pollution layer with trash on beaches, and `sp_alien` is species pollution due to alien (invasive) species.

In the current example, the two new layers created to account for the input and output effects of desalination operations will be called *po_desal_in*, and *po_desal_out*.

Assume that these new layers have scores from 0 to 1, with values for each region in your study area, and have been saved in `layers` folder.

### Register the new pressure layers in `layers.csv`

Add two new rows in `layers.csv`, and register the new pressure layers by filling out the first eight columns for *po_desal_in*, and *po_desal_out*. 

![](./fig/register_pressure.png)

### Register the new layers in `pressure_matrix.csv`**  

`pressures_matrix.csv` maps the different types of ocean pressures (columns) with the goals that they affect (rows). Adding a new pressures layer to `pressures_matrix.csv` requires adding a new column with the pressure layer name.

#### Set the pressure category

This step requires transferring previous decisions made by your team into `pressures_matrix.csv`. Each pressure category is calculated separately before being combined with the others, so it is important to register the new pressure with the appropriate category prefix decided by your regional assessment team.  

#### Identify the goals affected and set the weighting

This step also requries transferring prior decisions into `pressures_matrix.csv`. Mark which goals are affected by this new pressure, and then set the weighting. Pressures weighting by goal should be based on scientific literature and expert opinion (3=high pressure, 1=low pressure). 

![](./fig/register_new_pressures.png)

### Modify the resilience matrix (if necessary)

Resilience in the Ocean Health Index is the sum of the ecological factors and social initiatives (policies, laws, etc) that can positively affect goal scores by reducing or eliminating pressures. The addition of new pressure layers may therefore warrant the addition of new resilience layers that were not previously relevant. Similarly, the removal of pressure layers may warrant the removal of now irrelevant resilience layers. See below for instructions and examples about modifying resilience matrices.


## Modifying resilience matrices

Previous decisions made with your team will identify if any resilience layers should be added to the resilience matrices, and if so, which goals/pressures the resilience affects and what weight they should have. Then, you can transfer this information into `resilience_matrix.csv` (located in the `[assessment]/[scenario]/conf` folder).

`resilience_matrix.csv` maps the different types of resilience (columns) with the goals that they affect (rows). New resilience layers may be added to `resilience_matrix.csv` based on finer-scale local information either in response to a new pressures layer, or as a new independent measure. Any added layer must be associated with a pressures layer that has a weight of 2 or 3 in the Ocean Health Index framework so that resilience measures can mitigate pressures in each region.

Each goal must have a resilience measure associated with it. In the figure below, the Toolbox would give an error because there are no resilience layers indicated for the natural products (NP) goal. 
  
![](./fig/resil_mtx_bad.png)  
  
### Updating resilience matrix with local habitat information

In this example we will borrow from the experience of `ohi-israel`, where they assessed habitats in the Habitats (HAB) sub-goal that were not included in global assessments `ohi-global`. Therefore, the resilience matrix needed some revision.  

The habitats assessed for `ohi-israel` are:

> `rocky_reef, sand_dunes, soft_bottom`

Updates are required for several files:

* resilience_matrix.csv
* resilience_weights.csv (only if adding new resilience layers)   

#### Template resilience layers

The full list of layers included in the template resilience matrix are:

> `alien_species,  cites,  fishing_v1,  fishing_v1_eez,	fishing_v2_eez,	fishing_v3,	fishing_v3_eez,	habitat,	habitat_combo,	habitat_combo_eez,	li_gci,	li_sector_evenness,	mariculture,	msi_gov,	species_diversity,	species_diversity_3nm,	tourism,	water,	wgi_all`

Some of these layers capture general aspects of governance that apply to the protection of any habitat. These are:  

> `alien_species, cites, msi_gov, water, wgi_all`

Two layers only apply to the livelihoods and economies goal (LE), so they should be excluded from HAB resilience:

> `li_gci,  li_sector_evenness`

The remaining layers will apply to certain habitats, but not others. We focus on these to determine how to adapt the HAB resilience calculation for `ohi-israel`. They are:

> `fishing_v1, fishing_v1_eez, fishing_v2_eez, fishing_v3, fishing_v3_eez, habitat, habitat_combo,	habitat_combo_eez, mariculture, species_diversity, species_diversity_3nm,	tourism`

#### Determining how to modify these resilience layers

* If the new habitat occurs only along the coast, we should use `tourism` and `species_diversity_3nm`, otherwise, only use `species_diversity`. 
    + `sand_dunes` should use `tourism` and `species_diversity_3nm`,
    + `soft_bottom` should use `species_diversity`,
    + is `rocky_reef` mainly coastal? if so it should use `tourism` and `species_diversity_3nm`.
* If the habitats can be affected by mariculture plants (e.g. eutrophication and decreased water quality can occur if mariculture plants are close by and have poor wastewater treatment), then the `mariculture` resilience score should be added.
    + are there any mariculture plants in Israel? If yes, on which habitats do they occur?
* The remaining layers are the `fishing_v...` and `habitat..` layers, these are composite indicators that we call 'combo' layers, obtained from different combinations of the following datasets:

> `Mora, Mora_s4, CBD_hab, MPA_coast, MPA_eez`,

where: 

* `Mora` is a fisheries governance effectiveness indicator by Mora *et al* (2009)
* `Mora_s4` is another indicator from Figure S4 of the supplementary material of the same publication that focuses on regulations of artisanal and recreational fisheries
* `CBD_hab` is a questionnaire compiled by countries that committed to Rio's Convention on Biodiversity (CBD) to establish their progress towards habitat biodiversity protection
* `MPA_coast` is the proportion of coastal (3nm) waters that are in a marine protected area (MPA), with the maximum being 30% of coastal waters 
* `MPA_eez` is the proportion of the whole EEZ that is in a marine protected area, with the maximum being 30% of the whole EEZ.  

This table shows which data-sets are used by each combo layer: 

Layer | Mora | Mora_s4 | CBD_hab | MPA_coast | MPA_eez
------|------|---------|---------|-----------|--------
fishing_v1 | Mora | | CBD_hab | MPA_coast | 
fishing_v1_eez | Mora | | CBD_hab | | MPA_eez
fishing_v2_eez | Mora | Mora_s4 | CBD_hab | | MPA_eez
fishing_v3 | | Mora_s4 | CBD_hab |  MPA_coast | 
fishing_v3_eez | | Mora_s4 | CBD_hab | | MPA_eez
habitat | | | CBD_hab | | 
habitat_combo | | | CBD_hab |  MPA_coast | 
habitat_combo_eez | | | CBD_hab | | MPA_eez

**Questions to consider**:

1) For which habitats should you use both a fishery and a habitat combo, or just use a habitat combo?
* fisheries regulations do not affect the conservation of sand-dunes, so this habitat should not use any of the fisheries combos. Also, this is a strictly coastal habitat, so choose the habitat layer that uses the `MPA_coast` instead of the `MPA_eez`, i.e. `habitat_combo` (and, as mentioned above, choose the coastal version of biodiversity, i.e. `species_diversity_3nm`).
* The rocky reef and soft bottom, on the other hand, should definitely include fisheries regulations. So you'll need to choose a fisheries and a habitat combo for these two habitats.
2) Which fisheries and habitat combos for `rocky_reef` and `soft_bottom`? The choice depends on two things:
* whether they are coastal habitats (within 3nm of the coast) or EEZ-wide habitats     
      + if coastal, use the fisheries and habitat combos with `MPA_coast` (`fishing_v1`, `fishing_v3`, `habitat_combo`), and the `species_diversity_3nm` layer   
      + if EEZ-wide, use the fisheries and habitat combos with `MPA_eez` (`fishing_v1_eez`, `fishing_v2_eez`, `fishing_v3_eez`, `habitat_combo_eez`), and the `species_diversity` layer
* whether the fisheries occurring on that habitat are mainly artisanal, mainly commercial, or both
    + if only commercial fisheries, use a layer that only uses the `Mora` data `fishing_v1..`)
    + if only artisanal/small-scale fisheries, use a layer that only uses the `Mora_s4` data (`fishing_v3..`)
    + if both, use a layer that uses both `Mora` and `Mora_s4` data (`fishing_v2..`)
3) Are the existing combo layers appropriate or do you need an ad-hoc version for any of the Israel habitats? 
* if rocky reef is mainly coastal, and it is fished by both commercial and artisanal methods, then we need a new combo, specifically, we need a combo that uses `Mora`, `Mora_s4`, `CBD_hab`, and `MPA_coast` (this is the same as `fishing_v2_eez`, but we use the `MPA_coast` layer instead of the `MPA_eez`). All other combinations are already present.
4) Are there local data to be used?
* if there are local data on Marine Protected Areas (MPAs) and any areas with special regulations, this should be used to generate the `MPA_coast` and `MPA_eez` layers. \*\*NOTE: these are the same datasets used to calculate the status of Lasting Special Places (LSP).
5) How to update `resilience_matrix.csv`?
* write the complete list of layers you want to use for each habitat. Based on the above, for example, `soft bottom` in Israel matches the combination of layers called *soft bottom, with corals* in the default `resilience_matrix.csv`. But the `rocky_reef` and `sand_dunes` don't seem to match any existing combination, so you'll probably need to delete some of the rows, e.g. the *coral only*, and replace with new ad-hoc rows.

