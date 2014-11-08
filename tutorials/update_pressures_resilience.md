## Updating pressures and resilience

### Introduction 

'Pressures' and 'Resilience' are two of the four dimensions with which each goal/sub-goal is evaluated (the other two are 'Present Status' and 'Future Trend'):

 + "**Pressures** are the sum of the ecological and social pressures that negatively affect scores for a goal".
 + "**Resilience** is the sum of the ecological factors and social initiatives (policies, laws, etc) that can positively affect scores for a goal by reducing or eliminating pressures".

![](./fig/calculating_index.png)

For more general information on how OHI scores are calculated, see: http://www.oceanhealthindex.org/About/Methods/.

**Updating the pressure and resilience matrix for a new regional assessment will require the user to:**

 + Understand the pressures and resilience measures included in completed global assessment and determine whether they are relevant locally.
 + Identify and categorize new local pressures not captured in the pressures matrix.
 + Identify and categorize new local resilience measures (laws, regulations) not captured in the resilience matrix.
 + Set pressure and resilience weighting/ranking based on scientific literature and expert opinions.

**Before updating the pressure and resilience matrices however, please also consider the following:**

The Ocean Health Index framework calculates pressures by first grouping them into five ecological categories (pollution, habitat destruction, fishing pressure, species pollution, and climate change) and one social category. The reason behind the ecological categories was largely due to data availability at the global level and was designed to minimize sampling bias. For example, we found that there was more pollution data available than habitat destruction data, but just because people have monitored pollution more does not mean it is a larger pressure than habitat destruction. Ecologial and social pressures are assessed separately and then combined with equal weighting, which could be changed if there is local information on how to do so.

Ecological and social resilience are similarly assessed separately and then combined with equal weighting, which could also be changed based on expert opinions. Any new resilience measure must be associated with a pressure layer. This is because resilience in the Ocean Health Index framework acts to reduce pressures in each region. Therefore, resilience measures must not only be directly or indirectly relevant to ocean health, but must be in response to a pressure layer affecting a goal.

Note that goals often interact with each other through pressures. The pressure created by one goal may affect a second goal without being affected itself. For example, raising fish in the mariculture goal can cause genetic escapes, which is a pressure (the *sp_genetic* layer). This pressure affects only the wild-caught fisheries and species sub-goals, but does not affect mariculture itself. 


### Explore local pressures

Begin by exploring the pressures included in the global pressures matrix (`pressures_matrix.csv`). As illustrated below, pressures are either ecological or social, and are grouped into 6 categories: pollution, habitat destruction, fishing pressure, species pollution, climate change, and social pressures.

![](./fig/pressure_categories.png)

The first step in updating the pressures matrix for your regional assessment is to determine if there any pressures that should be excluded from your study? For example, if there is no mariculture in your study area, perhaps there are also no genetic escapes (*sp_genetic* layer).

Next, brainstorm local pressures that are not captured in `pressures_matrix.csv`. Which pressures stand out in your study area? Pressures included in the `pressures_matrix.csv` are ultimately determined by available data, and thus there were pressures that were important but could not be included in the global assessment because of data availability (including altered sediment regimes, noise and light pollution, toxic chemicals from point sources, and nutrient pollution from atmospheric deposition and land-based sources other than fertilizer application to agricultural land). There are likely pressures important to your study area that were not captured in the global pressures matrix.  

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


**Some background** on the reasoning behind nutrient and chemical pollution in the global `pressures_matrix.csv`: Nutrient and chemical pollution were calculated from the global cumulative impact maps (spatial data). These data were clipped to each global region's EEZ: 200 km from the coast.  

* For some goals, the data clipped to the EEZ affects goals that occur far from shore, so `po_chemicals` applies to goals relevant offshore: FIS, MAR, ECO, and SPP. 
* However, some goals are really only relevant nearshore, so we clipped the spatial data again, to 3nm from shore and used this as a separate input. So `po_chemicals_3nm` applies to goals nearshore: AO, CS, CP, TR, ICO, LSP, HAB. 

These distinctions don't always apply for smaller-scale assessments. For example, in the US West Coast study (Halpern et al. 2014), only a single `po_chemicals` layer was used: we did not distinguish between offshore and 3nm.


### Determine how the pressure affects goals

Next, you will need to:

 + Map which goals are affected by a given pressure layer.
 + Determine the appropriate rank weighting (how important the pressure is for the delivery of the goal/component).
 + Decide in which pressure category the new pressure belongs.

These decisions should depend on expert opinions and previous scientific studies, even if they do not occur in your study area.

The original pressure matrix weights for instance were determined by Halpern *et al*. 2012 (*Nature*) based on scientific literature and expert opinion (3=high, 2=medium, and 1=low pressure; stressors that have no impact drop out rather than being assigned a rank of zero, which would affect the average score). Pressures are ranked rather than being represented as a binary (yes/no) measure because the range of consequence of different pressures on each goal can be quite large, and to classify all those pressures as a simple 'yes' would unduly give too much influence to the weakest stressors. For example, food provision is most heavily impacted by unsustainable, high-bycatch fishing, but pollution does have  some impact on fish stocks. Without a weighting system, these stressors would be treated equally in their impact on the food provision goal. 

Most likely, the new pressure will fit into one of the existing categories. However, depending on the type of pressures in your study area, it is possible that a new pressure category could be created.  

      
### Identify available pressures data

Like the global study, what pressures you are able to include in your regional study will also depend on data availability. Remember that each column in `pressures_matrix.csv` is a data layer, which requires data for each region in your study area. Begin with a list of local pressures that are important, and then refine if data are not available. 
  
In addition to data for the local pressures you identify, it will likely be possible to find better, local data to replace the global template data layers from the pressures matrix. In this case, you will first find local data and then update the pressure data layer as you would with any other data layer. See the 'modifying and creating data layers' section below for how to do this. 
      
      
### Explore local resilience 

As with the pressures matrix, begin by exploring the resilience measures included in the global resilience matrix (`resilience_matrix.csv`). As illustrated below, resilience is also grouped into ecological and social categories, and includes ecological components, goal-specific regulations, and social  components.

![](./fig/resilience_categories.png)

Goal-specific regulations intend to address ecological pressures, and are measured as laws, regulations, and other institutional measures related to a specific goal. Governance is a function of institutional structures that address the intended objective, implementing such governance, and whether stated objectives have been effectively met. Social integrity is intended to describe those processes internal to a community that affect its resilience. It is a function of a wide range of aspects of social structure within a region, and may not be strictly marine related, but can judge how well-governed areas are and therefore how well a region may be able to respond to or prevent environmental challenges.  

The first step in updating the resilience matrix for your regional assessment is to determine if there any resilience measures that should be excluded from your study? 

Next, brainstorm local resilience measures that are not captured in `resilience_matrix.csv`. What are important regulatory, ecological and social resilience measures in your study area? Resilience measures included in `resilience_matrix.csv` are also determined by available data, and thus it is possible to improve upon the resilience measures when doing an assessment at a spatial scale smaller than the global analysis.

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

\* *CBD = Centre for Biological Diversity; GCI = Global Competitiveness Index; MSI = Mariculture Sustainability Index; WGI = World Governance Indicators*. 

Ecological integrity in the global assessment was measured as the relative condition of assessed species in a given location, and therefore is only relevant to a subset of goals (wild-caught fisheries, artisanal opportunity, natural products, iconic species, and species). Local measures of this component would potentially allow for more goals to be affected. 

### Identify regulatory resilience measures for any new ecological pressures

As you explore to any new local resilience measures to be included, remember that any new pressure in the ecological resilience category with a rank of 2 or 3 will need a corresponding resilience measure. 


### Determine how the resilience measure affects goals

Next, you will need:

 + Map which goals are affected by a given resilience layer. 
 + Determine the appropriate rank weighting, (how important the resilience is in counteracting a pressure). 
 + Decide in which resilience category the new pressure belongs.

These decisions should depend on local expert knowledge and previous scientific studies, even if they do not occur in your study area. 


### Identify available resilience data

Resilience layers are intended to describe the measures that set rules and regulations to address ecological pressures, and are measured as laws and other institutional measures related to a specific goal. Data to address these resilience  components should fall into one of three categories: 

1. Existence of rules and regulations: Are there institutional structures in place to appropriately address the ecological pressure? 
2. Implementation and Enforcement: Have these structures been appropriately implemented and are there enforcement mechanisms in place? 
3. Effectiveness and Compliance: How effective has the structure been at mitigating these pressures and is their effective compliance with these structures?      

Social measures may not be strictly marine related, but can judge how well-governed areas are and therefore how well a region may be able to respond to or prevent environmental challenges.  


