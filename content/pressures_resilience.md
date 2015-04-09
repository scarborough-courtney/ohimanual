## Pressures and resilience

It is important to spend time identifying the pressures that affect coastal systems in your study area; there will likely be additional pressures in smaller-scale assessments that were not included in the global assessments. Once you have identified pressures within your study area, identify what resilience measures could counteract those pressures.

The same considerations and requirements about data presented in the "**Gathering Appropriate Data**" section also apply to pressures and resilience. This is because every measure you include for pressures and resilience requires data for each region in your assessment. This is explained in more detail in the following sections.

### Introduction to pressures and resilience
**Pressures** and **Resilience** are two of the four dimensions used to evaluate each goal or sub-goal (the other two are **Status** and **Trend**).

* **Pressures** are the sum of the ecological and social pressures that negatively affect goal scores.
* **Resilience** is the sum of the ecological and social status (e.g., food-web integrity, health of the governance process) and initiatives (e.g., environmental laws, social policies) that can positively affect goal scores by reducing or eliminating pressures.  

**In the figure below**, likely future state (in yellow) is the result of the current status modified by trend, minus the negative effect of pressures (grey), plus the positive effect of resilience (salmon pink).

![In the figure, likely future state (in yellow) is the result of the trend, minus the negative effect of pressures (grey), plus the positive effect of resilience (salmon pink)](https://docs.google.com/drawings/d/1GkLZnW8hQJf1KLX89LzViEBU4PkJ8kRqOERt_Fxtwu4/pub?w=864&h=384)

#### Categories

The Toolbox calculates pressures in five ecological pressure categories (pollution, habitat destruction, fishing pressure, species pollution, and climate change) and one social pressure category. The reason behind the ecological categories is to avoid hidden weighting. For example, in the global assessment there were many pollution datasets available, but few distinct habitat destruction datasets. If we simply averaged the individual stressor scores, pollution scores would have a greater influence on the results (stronger weight) just because people have monitored pollution by measuring many pollution types. Instead, aggregating by pressure categories ensures that different stressor types influence the score based on ranks. Nonetheless, to account for the fact that multiple different stressors within a category are likely to have a cumulative impact that is greater than if only one of the stressors were present, the scores are combined in a cumulative way within each category. The resulting scores are then averaged across ecological pressure categories. This result, in turn, is averaged with the social pressures to produce the final overall pressure score.

In theory, every pressure measure identified to be important in an assessment should have a corresponding resilience measure. The reasoning behind this is that as resilience in the study area increases (example: there are better regulations), the pressures would decrease and overall scores would increase. It is important that you search for measures that 'balance' the pressures so that the regulation is being effective in keeping the stressor under control. By including a regulatory response to each pressure affecting the delivery of the goals, we ensure that the resilience regulation measures are relevant to ocean health.

In practice, however, the pressures and resilience measures you include in your assessment will be determined by data availability. It is best to consider what pressures are acting in your study area and whether data are available to measure them, and then whether the pressures included in the global assessment are relevant and whether better data are available locally. When considering resilience measures, look for regulations or indicators that could be encompassed in one of the pressures categories.

**The figure below** shows pressures measures by category, and the resilience measures meant to 'balance' them for the global assessment. Note that resilience layers were only available for some categories and goals. Also note that there are resilience measures that are goal-specific; that is to say that they act on certain goals without counteracting pressures. When you have regulations to improve the practices captured in specific goals, you can include them as resilience measures.  

![Each resilience data layer should have a corresponding pressures layer, and vice versa. Note that a pressure layer becomes (1-resilience) in cases where only resilience data are available, due to data limitations.](https://docs.google.com/drawings/d/19ZBIhzTrNlumV9ZhCmsdEcvybFHp-eN5P5IFAsFmql0/pub?w=558&h=721)

#### Pressure and status interactions

Goals may interact with each other because the pressure created by one goal may affect a second goal. For example, cultivating fish for mariculture (food provision sub-goal) can cause genetic escapes threatening the health of wild fish populations. This pressure affects two sub-goals:wild-caught fisheries and species, but does not affect the mariculture goal itself. In other cases, such as the fishing harvest pressure, the pressure comes as a result of pursuing the food provision sub-goal of wild-caught fisheries, affecting several goals including the fishing sub-goal itself.

### Pressures and resilience matrices

Once the pressures and resilience measures within a study area are identified (and data are available for each region), how each of the measures affect goals and sub-goals (and for some goals, habitat type or natural product categories) are determined and illustrated in matrix tables. Relationships between pressures measures and goals are determined, and ranks from 1-3 are applied based on how strongly that goal is affected by the pressure compared to all other pressures affecting that goal. That is to say, rankings are relative to each goal. Goals that are not affected by a pressure have a rank of 0, which is displayed as a blank in the matrix). These relationships and rankings are informed by literature review and expert opinion; see Supplemental Table S28 of *Halpern et al. 2012* for how the matrices were determined for the global assessment.

![Scores from 1-3 are given to rank the importance of each pressure. Only values of 2 or 3 require that a resilience layer be activated when calculating the goal scores.](https://docs.google.com/drawings/d/1IQhFezmGGAgPS-iZQ_0TfU2FgtV0hv81f2RV9pyiJCI/pub?w=960&h=480)

While pressures and resilience are usually displayed as two-dimensional matrices, they are actually three-dimensional matrices: each pressure measure has data for each region in the study area, which is the third dimension of the matrix, as shown in the figure. The Toolbox will combine the data with the rank weights to calculate the pressures scores.

![The pressures matrix is three-dimensional: each pressure layer has data per region, which is multiplied by the ranking weights of the pressures matrix.](./fig/ohiman_goals-pressures-regions.png)


### How to include pressures in your assessment

The following steps are iterative; return to previous steps to ensure you capture all important pressures in your study area.

1. Begin by exploring pressures important to your study area. What are big stressors acting along your coastlines? Are data available to measure these stressors? If not, are other indirect measures or proxies available to represent these stressors?
2. Evaluate which pressures are included in the global assessment and determine whether they are relevant for the study area of your assessment.
3. Evaluate whether information are available for each region in your study area that could be substituted for global measures.
4. To add any new pressures measures to the matrix, add the pressure into one of the existing categories, or create a new category if needed.


JSL come back here

### Updating the pressures matrix

The first step in updating the pressures matrix for your  assessment is to determine if any of the global pressures should be excluded from your study. For example, if there is no mariculture in your study area, perhaps there are also no genetic escapes (`sp_genetic` layer).  

Next, brainstorm local pressures that are not captured in `pressures_matrix.csv`. Which pressures stand out in your study area? Pressures included in the `pressures_matrix.csv` are ultimately determined by available data, and thus there were pressures that were important but could not be included in the global assessment because there were little or no data, such as altered sediment regimes, noise and light pollution, toxic chemicals from point sources, and nutrient pollution from atmospheric deposition, and land-based sources other than fertilizer and pesticide applications to agricultural land). There are likely pressures important to your study area that were not captured in the global pressures matrix. Another reason why pressures in the global assessment may be different than yours may be because of scale: certain sources of pollution, such as mariculture, may be very relevant at the scale of a single bay, but become negligible at the scale of the whole country’s coastline.

**Table of pressures layers and descriptions**

|layer            |name                                                                                              |
|:----------------|:-------------------------------------------------------------------------------------------------|
|cc_acid          |Ocean acidification                                                                               |
|cc_slr           |Sea level rise                                                                                    |
|cc_sst           |Sea surface temperature (SST) anomalies                                                           |
|cc_uv            |UV radiation                                                                                      |
|fp_art_hb        |High bycatch caused by artisanal fishing                                                          |
|fp_art_lb        |Low bycatch caused by artisanal fishing                                                           |
|fp_com_hb        |High bycatch caused by commercial fishing                                                         |
|fp_com_lb        |Low bycatch caused by commercial fishing                                                          |
|fp_targetharvest |Targeted harvest of cetaceans and sea turtles                                                     |
|hd_intertidal    |Coastal population density as a proxy for intertidal habitat destruction                          |
|hd_subtidal_hb   |High bycatch artisanal fishing practices as a proxy for subtidal hard bottom habitat destruction  |
|hd_subtidal_sb   |High bycatch commercial fishing practices as a proxy for subtidal soft bottom habitat destruction |
|po_chemicals_3nm |Land-based chemical pollution                                                                     |
|po_nutrients_3nm |Coastal nutrient pollution                                                                        |
|sp_alien         |Alien species                                                                                     |
|sp_genetic       |Introduced species as a proxy for genetic escapes                                                 |
|ss_wgi           |Weakness of governance indicated with the WGI                                                     |
|po_chemicals     |Ocean-based chemical pollution                                                                    |
|po_nutrients     |Ocean nutrient pollution                                                                          |
|po_pathogens     |Access to improved sanitation as a proxy for pathogen pollution                                   |
|po_trash         |Trash pollution                                                                                   |


### Some spatial considerations

For pressure layers that are derived from spatially-explicit data, it is important to consider to what portion of the study area that pressure is relevant. For example, in the global study, nutrient and chemical pollution were calculated from the global cumulative impact study (spatial data from Halpern *et al.* 2008). These data were clipped to each global region's EEZ: 200 nm from the coast:

* For some goals, the data clipped to the EEZ affects goals that occur far from shore, so `po_chemicals` applies to goals relevant offshore: FIS, MAR, ECO, and SPP.
* However, some goals are really only relevant nearshore, so we clipped the spatial data again, to 3nm from shore and used this as a separate input. So `po_chemicals_3nm` applies to goals nearshore: AO, CS, CP, TR, ICO, LSP, HAB.

These distinctions won't always apply for smaller-scale assessments. For example, in the US West Coast study (Halpern *et al.* 2014), only a single `po_chemicals` layer was used: we did not distinguish between offshore and 3nm.

### Determine how the pressure affects goals

Next, you will need to determine:

 + which goals are affected by a given pressure layer.
 + the appropriate rank weighting (how important the pressure is for the delivery of the goal/component).
 + which pressure category the new pressure belongs.

These decisions should depend on expert opinions and previous scientific studies.

The original pressure matrix weights for instance were determined by Halpern *et al*. 2012 (*Nature*) based on scientific literature and expert opinion (3=high, 2=medium, and 1=low pressure; stressors that have no impact drop out rather than being assigned a rank of zero, which would affect the average score). Pressures are ranked rather than being represented as a binary (yes/no) measure because the range of consequence of different pressures on each goal can be quite large, and to classify all those pressures as a simple 'yes' would give too much influence to the weakest stressors. For example, food provision is most heavily impacted by unsustainable, high-bycatch fishing, but pollution does have  some impact on fish populations. Without a weighting system, these stressors would be treated equally in their impact on the food provision goal.

Most likely, the new pressure will fit into one of the existing categories. However, depending on the type of pressures in your study area, it is possible that a new pressure category could be created. If you decide to create a new category, be mindful of the implications described above.  


### Identify available pressures data

Like the global study, what pressures you are able to include in your assessment will also depend on data availability. Remember that each column in `pressures_matrix.csv` is a data layer, which requires data for each region in your study area. Begin with a list of local pressures that are important, and then refine if data are not available.

In addition to data for the local pressures you identify, it will likely be possible to find better, local data to replace the global template data layers from the pressures matrix. In this case, you will first find local data and then update the pressure data layer as you would with any other data layer. See the '**Modifying and Creating Data Layers**' section  for how to do this.  

It is important to keep in mind that each pressure layer needs to capture the stressor on a scale that goes from 0 (no stressor at all) to 100 (the highest possible value for the stressor, or the value at which the goal achievement is completely impaired). In other words, when using local data, ensure that you are able to come up with benchmarks to rescale the pressure layer from 0 to 100.

### Explore local resilience

As with the pressures matrix, begin by exploring the resilience measures included in the global resilience matrix (from Halpern *et al*. 2012 Table S26 or `subcountry2014/conf/resilience_matrix.csv`). As illustrated in the figure, resilience is also grouped into ecological and social categories, and includes ecological components, goal-specific regulations, and social components.

In the example below, only one regulatory measure is relevant for the clean waters goal, along with one social integrity measure.

![](./fig/resilience_categories.png)

Goal-specific regulations intend to address ecological pressures, and are measured as laws, regulations, and other institutional measures related to a specific goal. Governance includes the laws or regulations that address the intended objective, implementation of such laws, and whether stated objectives have been effectively met. Social integrity is intended to describe those processes internal to a community that affect its resilience. It is a function of a wide range of aspects of social structure within a region, and may not be strictly marine related, but can inform the level of governance within a region and therefore the ability to respond to or prevent environmental challenges.

The first step in updating the resilience matrix for your assessment is to determine if any resilience measures should be excluded from your study.
Next, brainstorm local resilience measures that are not captured in `resilience_matrix.csv`. What are important regulatory measures to address the stressors you’ve included in your study area? Can you add social resilience measures that are not included in the global assessment?

**Table of resilience layers and descriptions**

|layer                 |name                                                            |
|:---------------------|:---------------------------------------------------------------|
|alien_species         |Alien species                                                   |
|cites                 |Resilience from commitment to CITES                             |
|fishing_v1            |CBD survey: coastal fishing v1                                  |
|fishing_v1_eez        |CBD survey: ocean fishing v1                                    |
|fishing_v2_eez        |CBD survey: ocean fishing v2                                    |
|fishing_v3            |CBD survey: coastal fishing v3                                  |
|fishing_v3_eez        |CBD survey: ocean fishing v3                                    |
|habitat               |CBD survey: habitat                                             |
|habitat_combo         |CBD survey: coastal habitat                                     |
|habitat_combo_eez     |CBD survey: ocean habitat                                       |
|li_gci                |GCI: competitiveness in achieving sustained economic prosperity |
|li_sector_evenness    |Sector evenness as a measure of economic diversity              |
|mariculture           |CBD survey: mariculture                                         |
|msi_gov               |MSI sustainability and regulations                             |
|species_diversity     |Ocean ecological integrity                                      |
|species_diversity_3nm |Coastal ecological integrity                                    |
|tourism               |CBD survey: tourism                                             |
|water                 |CBD survey: water                                               |
|wgi_all               |Strength of governance indicated with the WGI                   |

\* *CBD = Convention on Biological Diversity; GCI = Global Competitiveness Index; MSI = Mariculture Sustainability Index; WGI = World Governance Indicators*.

Ecological integrity in the global assessment was measured as the relative condition of assessed species in a given location, and therefore is only relevant to a subset of goals (wild-caught fisheries, artisanal opportunity, natural products, iconic species, and species). Local measures of this component would potentially allow for more goals to be affected.

### Identify regulatory resilience measures for any new ecological pressures

As you explore any new local resilience measures to be included, remember that any new pressure in the ecological integrity category with a high ranking of (2 or 3) will need a corresponding resilience measure.

### Determine how the resilience measure affects goals

Next, you will need to determine:

 + which goals are affected by a given resilience measure
 + the appropriate rank weighting, (how important the resilience is in counteracting a pressure)
 + whether the resilience measure is social or ecological

These decisions should depend on local expert knowledge and previous scientific studies.


### Identify available resilience data

Resilience measures included in `resilience_matrix.csv` are also determined by available data, coarser spatial resolution, and may not reflect local management targets. When data or indicators are available, you should include them to improve upon resilience measures. You may also ask: What are local management benchmarks that you can use to rescale the resilience layers? Do you have locally-developed indices to capture social resilience that may be more specific to your area than the World Bank governance index? Do you have regional models that might capture the ecological integrity of the foodweb that could replace average extinction risk of IUCN-assessed species?

**Ecological resilience** scores are intended to describe the degree to which there are effective regulations to address ecological pressures, and are measured by assessing the relevant laws and institutional processes. It is difficult to assign a quantitative score to such a complex attribute. Moreover, it is challenging to establish a benchmark to compare that score against, but this is necessary to rescale the resilience score from 0 to 100. In some cases, some numerical indices are readily available and may be used as is (rescaled to the highest observed value, if necessary). In other cases, we had to assign expert-based scores:

1. Existence of regulations: Are regulations in place to appropriately address the ecological pressure?
2. Implementation and Enforcement: Have these regulations been appropriately implemented and are there enforcement mechanisms in place?
3. Effectiveness and Compliance: How effective have the regulations been at mitigating these pressures and is there compliance with these regulations?

**Social resilience** may not be strictly marine related, but can help predict how well a region may be able to respond to or prevent new environmental challenges.
