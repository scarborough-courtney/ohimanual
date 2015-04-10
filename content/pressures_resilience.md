## Pressures and resilience

It is important to spend time identifying the pressures that affect coastal systems in your study area; there will likely be additional pressures in smaller-scale assessments that were not included in the global assessments. Once you have identified pressures within your study area, identify what resilience measures could counteract those pressures.

The same considerations and requirements about data presented in the "**Gathering Appropriate Data**" section also apply to pressures and resilience. This is because every measure you include for pressures and resilience requires data for each region in your assessment. This is explained in more detail in the following sections.

### Introduction to pressures and resilience
**Pressures** and **Resilience** are two of the four dimensions used to evaluate each goal or sub-goal (the other two are **Status** and **Trend**).

* **Pressures** are the sum of the ecological and social pressures that negatively affect goal scores.
* **Resilience** is the sum of the ecological and social status (e.g., food-web integrity, health of the governance process) and initiatives (e.g., environmental laws, social policies) that can positively affect goal scores by reducing or eliminating pressures.  

**In the figure below**, likely future state (in yellow) is the result of the current status modified by trend, minus the negative effect of pressures (grey), plus the positive effect of resilience (salmon pink).

![In the figure, likely future state (in yellow) is the result of the trend, minus the negative effect of pressures (grey), plus the positive effect of resilience (salmon pink)](https://docs.google.com/drawings/d/1GkLZnW8hQJf1KLX89LzViEBU4PkJ8kRqOERt_Fxtwu4/pub?w=864&h=384)

#### Pressure and resilience categories

The Toolbox calculates pressures in five ecological pressure categories (pollution, habitat destruction, fishing pressure, species pollution, and climate change) and one social pressure category. The reason behind the ecological categories is to avoid hidden weighting. For example, in the global assessment there were many pollution datasets available, but few distinct habitat destruction datasets. If we simply averaged the individual stressor scores, pollution scores would have a greater influence on the results (stronger weight) just because people have monitored pollution by measuring many pollution types. Instead, aggregating by pressure categories ensures that different stressor types influence the score based on ranks. Nonetheless, to account for the fact that multiple different stressors within a category are likely to have a cumulative impact that is greater than if only one of the stressors were present, the scores are combined in a cumulative way within each category. The resulting scores are then averaged across ecological pressure categories. This result, in turn, is averaged with the social pressures to produce the final overall pressure score.

In theory, every stressor identified to have a strong impact should have a corresponding resilience measure. The reasoning behind this is that as resilience in the study area increases (example: there are better regulations), the pressures would decrease and overall scores would increase. It is important that you search for measures that 'balance' the pressures so that the regulation is being effective in keeping the stressor under control. By including a regulatory response to each pressure affecting the delivery of the goals, we ensure that the resilience regulation measures are relevant to ocean health.

In practice, however, the pressures and resilience measures you include in your assessment will be determined by data availability. It is best to consider what pressures are acting in your study area and whether data are available to measure them, and then whether the pressures included in the global assessment are relevant and whether better data are available locally. When considering resilience measures, look for regulations or indicators that could be encompassed in one of the pressures categories.

**The figure below** shows stressors by category, and the resilience measures meant to 'balance' them for the global assessment. Note that resilience layers were only available for some categories and goals. Also note that there are resilience measures that are goal-specific; that is to say that they act on certain goals without counteracting pressures. When you have regulations to improve the practices captured in specific goals, you can include them as resilience measures.  

![Each resilience data layer should have a corresponding pressures layer, and vice versa. Note that a pressure layer becomes (1-resilience) in cases where only resilience data are available, due to data limitations.](https://docs.google.com/drawings/d/19ZBIhzTrNlumV9ZhCmsdEcvybFHp-eN5P5IFAsFmql0/pub?w=558&h=721)

#### Pressure and status interactions

Goals may interact with each other because the pressure created by one goal may affect a second goal. For example, cultivating fish for mariculture (food provision sub-goal) can cause genetic escapes threatening the health of wild fish populations. This pressure affects two sub-goals:wild-caught fisheries and species, but does not affect the mariculture goal itself. In other cases, such as the fishing harvest pressure, the pressure comes as a result of pursuing the food provision sub-goal of wild-caught fisheries, affecting several goals including the fishing sub-goal itself.

### Pressures and resilience matrices

Once the pressures and resilience measures within a study area are identified (and data are available for each region), how each of the measures affect goals and sub-goals (and for some goals, habitat type or natural product categories) are determined and illustrated in matrices (matrix tables). Relationships between stressors and goals are determined, and ranks from 1-3 are applied based on how strongly that goal is affected by the pressure compared to all other pressures affecting that goal. That is to say, rankings are relative to each goal.

The pressure matrix rank weights were determined by Halpern *et al*. 2012 (*Nature*) based on scientific literature and expert opinion (see Supplemental Table S28 of *Halpern et al. 2012*). In the pressures matrix, 3=high, 2=medium, and 1=low pressure; stressors that have no impact drop out rather than being assigned a rank of zero, which would affect the average score. Pressures are ranked rather than being represented as a binary (yes/no) measure because the range of consequence of different pressures on each goal can be quite large, and to classify all those pressures as a simple 'yes' would give too much influence to the weakest stressors. For example, food provision is most heavily impacted by unsustainable, high-bycatch fishing, but pollution does have some impact on fish populations. Without a weighting system, these stressors would be treated equally in their impact on the food provision goal.

![Scores from 1-3 are given to rank the importance of each pressure. Only values of 2 or 3 require that a resilience layer be activated when calculating the goal scores.](./fig/ohiman_goals-pressures-2D.png)

While pressures and resilience are usually displayed as two-dimensional matrices, they are actually three-dimensional matrices: each stressor has data for each region in the study area, which is the third dimension of the matrix, as shown in the figure. The Toolbox will combine the data with the rank weights to calculate the pressures scores.

![The pressures matrix is three-dimensional: each pressure layer has data per region, which is multiplied by the ranking weights of the pressures matrix.](./fig/ohiman_goals-pressures-regions.png)


Resilience measures are meant to 'balance' pressures that have a rank of 2 or 3 since these pressures have the greatest affect on ocean health. The Ocean Health Index considers resilience in two categories: **ecological resilience** to address ecological pressures, and **social resilience**, which may not be strictly marine-related but can help estimate how region may be able to respond to or prevent new environmental challenges. Additionally, **goal-specific regulations** intend to address ecological pressures, and are measured as laws, regulations, and other institutional measures related to a specific goal. Ideally, for any resilience measure, you would have three tiers of information:

* **Existence of regulations**: Are regulations in place to appropriately address the ecological pressure?
* **Implementation and enforcement**: Have these regulations been appropriately implemented and are there enforcement mechanisms in place?
* **Effectiveness and compliance**: How effective have the regulations been at mitigating these pressures and is there compliance with these regulations?

Ideally, information would exist for these three tiers, and you would be able to weight the resilience measure based on the quality of the information as 1 (existence of regulation), 2 (implementation and enforcement), or 3 (effectiveness and compliance) (this is different from the way ranks are assigned in pressures, which is based on impact). However, in most cases, information is not available for these three tiers: it often, the existence of regulations is all that are available, and this does not always vary by region.


### Incorporating local pressures in your assessment

The pressures you will include in your assessment will depend on what is important in your study area and what data are available. You are able to use data from the global assessment if local data are not available, but this means in most cases that you will not have different information for each region. Only after you have identified what can be included will you determine the ranks required in the pressures matrix.

The following steps outline the process of how to include pressures in your assessment. The steps are iterative; return to previous steps to ensure you capture all important pressures in your study area.

1. Begin by exploring pressures important to your study area. What are big stressors acting along your coastlines?
2. Are data available to measure these stressors? If not, are other indirect measures or proxies available to represent these stressors?
3. Evaluate the pressures are included in the global assessment. For example, if there is no mariculture in your study area, the genetic escapes pressure could be removed.
4.  Are all of them relevant? Are there local data that can be substituted in the place of global data?
5. Determine the pressure category for any additional stressors in your study area, and add it to the pressures matrix.
6. When all stressors are included in the pressures matrix, determine which goals it affects. Then, determine the rankings of all stressors for each goal. Use literature and expert judgement to determine this.
7. Prepare each pressure data layer only after steps 1-6 are completed. In addition to the proper formatting for the Toolbox, pressures data must be rescaled (normalized) on a unitless scale from 0 - 1, where 0 is no stressor at all and 1 is the highest possible value for the stressor, or the value at which the goal achievement is completely impaired. You will have to determine how to rescale the data, whether it is based on the highest value in the data range or other methods.



#### Including pressures from global assessments

If you are not able to find local data for stressors included in global assessments, it is possible to use the data from global assessments. For most of the stressors, this means that there will not be differences between the subcountry regions within your study area. However, several stressors included in the global assessment are based on spatial data at high resolution from previous work by Halpern *et al.* (2008) in *Science:* [A global map of human impact on marine ecosystems](http://www.sciencemag.org/content/319/5865/948.abstract). Data are available for every square kilometer of the global ocean, and can be extracted for the regions in your study. The stressors available at one square kilometer resolution are indicated below with ** \*\* **.


**Table of pressures layers and descriptions**

|layer            |name                                                                                              |
|:----------------|:-------------------------------------------------------------------------------------------------|
|cc_acid**        |Ocean acidification                                                                               |
|cc_slr**         |Sea level rise                                                                                    |
|cc_sst**         |Sea surface temperature (SST) anomalies                                                           |
|cc_uv**          |UV radiation                                                                                      |
|fp_art_hb        |High bycatch caused by artisanal fishing                                                          |
|fp_art_lb        |Low bycatch caused by artisanal fishing                                                           |
|fp_com_hb        |High bycatch caused by commercial fishing                                                         |
|fp_com_lb        |Low bycatch caused by commercial fishing                                                          |
|fp_targetharvest |Targeted harvest of cetaceans and sea turtles                                                     |
|hd_intertidal    |Coastal population density as a proxy for intertidal habitat destruction                          |
|hd_subtidal_hb   |High bycatch artisanal fishing practices as a proxy for subtidal hard bottom habitat destruction  |
|hd_subtidal_sb   |High bycatch commercial fishing practices as a proxy for subtidal soft bottom habitat destruction |
|po_chemicals**   |Ocean-based chemical pollution                                                                    |
|po_chemicals_3nm**|Land-based chemical pollution                                                                     |
|po_nutrients**   |Ocean nutrient pollution                                                                          |
|po_nutrients_3nm**|Coastal nutrient pollution                                                                        |
|po_pathogens     |Access to improved sanitation as a proxy for pathogen pollution                                   |
|po_trash         |Trash pollution                                                                                   |
|sp_alien         |Alien species                                                                                     |
|sp_genetic       |Introduced species as a proxy for genetic escapes                                                 |
|ss_wgi           |Weakness of governance indicated with the WGI                                                     ||


Note that chemical and nutrient pollution have both land-based (within 3 nautical miles) and ocean-based (within the entire 200 nautical mile EEZ) elements. This is because how pollution affects different goals will depend on the spatial scale of the goal's activity. Some goals occur far from shore, and nutrient and chemical pollution should be included for all offshore waters: FIS, MAR, ECO, and SPP. However, some goals are really only relevant nearshore, so nutrient and chemical pollution should only be included close to the shoreline (3nm in the global study): AO, CS, CP, TR, ICO, LSP, HAB.

These distinctions won't always apply for smaller-scale assessments. For example, in the US West Coast study (Halpern *et al.* 2014), we did not distinguish between offshore and 3nm and therefore only used the `po_nutrients` data layer.

### Incorporating local resilience measures in your assessment

Finding appropriate resilience measures is difficult. It is often difficult to find regulations and indicators that would directly 'balance' individual stressors, but it is worth the effort to explore what information is available in the local context and how it could be included as resilience measures.

1. Begin by exploring how resilience could be measured to your study area. What laws and regulations are in place that could provide resilience to ocean health?
2. Do you have locally-developed indices to capture social or ecological resilience? Is there information about how each region in your study area are implementing or enforcing the laws?
3. Evaluate the resilience measures are included in the global assessment. Are all of them relevant? Are there local data that can be substituted in the place of global data? Are there resilience measures that should be excluded entirely?
4. Assign the resilience measure to the appropriate goall. Since resilience measures are in response to pressures that have a rank 2 or 3 effect on a certain goal, determining which goals ecological and social resilience measures affect is simply following the same pattern as the pressures matrix. For goal-specific resilience measures, assign the resilience measure to the appropriate goal.
5. Prepare each resilience data layer only after steps 1-6 are completed. In addition to the proper formatting for the Toolbox, resilience data must be rescaled (normalized) on a unitless scale from 0 - 1. You will have to determine how to rescale the data, whether it is based on the highest value in the data range or other methods.


#### Including resilience measures from global assessments

Because resilience relies heavily upon regulations relevant to ocean health, local measures are far more appropriate than those included in global assessments, which likely do not reflect local management targets.

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
