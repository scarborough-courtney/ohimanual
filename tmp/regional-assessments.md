---
title: Conducting OHI Regional Applications (draft)
---

# Introduction to OHI Regional Assessments

**Regional assessments** use the Ocean Health Index framework to study smaller spatial scales, often where policy and management decisions are made. Regional assessments incorporate local priorities, higher-resolution data and indicators, and use tailored goal models and reference points, which produce scores better reflecting local realities.  

Scores by goal are calculated for each **region**, and regions are combined using a weighted average to produce the score for the overall area assessed, called a **study area**. In regional assessments, coastal states or provinces are often the **regions** within a country, which is the **study area**. 

![](./fig/global_v_brazil_map.png)

Regional assessments have been published in peer-review journals for the U.S. West Coast ([Halpern et al. 2014](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0098995)) and for Brazil ([Elfes et al. 2014](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0092589) ), and more are underway.   


# Conducting a Regional Assessment

The Ocean Health Index framework is flexible to accommodate regional priorities: goal models can be modified to incorporate the best available local data and indicators, or excluded entirely to best represent regional attributes. 

**The process for developing a regional assessment can be as valuable as the final calculated scores, since it creates an ocean alliance that combines knowledge and cultural values from many different perspectives and disciplines**. Calculating Ocean Health Index scores at regional scales requires engagement from as many different groups as possible, including research institutions, government agencies, policy groups, non-governmental organizations, and the civil and private sectors.
  

## What to expect when conducting a regional assessment

There are key considerations and processes that will be a part of every regional assessment, however, how each regional assessment is conducted will be unique depending on the local context. For example: what data and indicators are available will determine how goal models are able to be tailored to the region, and what skillsets and resources are involved will affect the time it takes to complete the assessment. 

The time required to complete a regional assessment depends on the local context and available resources, but the proportion of time required for different phases of the assessment is more predictable.  

**Expect for strategic planning, discovering and gathering data, and developing reference points and models, to comprise > 80% of the time alloted for the regional assessment**. 

![](./fig/task_timeline.png)  
    
## What is provided  

The Ocean Health Index Toolbox can be used to calculate scores for regional assessments. When you begin a regional assessment, you will be provided with a set of Toolbox files and software scripts specific to your study area. The data in the files provided serve as a template: they are the data used in the global assessments, extracted for your study area. These data files will need to be updated with locally available data and indicators so as to give a more fine-scale assessment of ocean health in your study area. However, if better data are not available, it is possible to use the files provided.  

Our team of scientists and managers is prepared to provide guidance for regional assessments, from initial meetings to discussions about model development to disseminating results.

## Checklist: To Do Before Using the Toolbox

Most of the time spent while conducting a regional assessment occurs before using the Toolbox, although being familiar with the Toolbox's composition and structure can help guide you. Here is a checklist of decisions and steps that must be done before the Toolbox can calculate regional goal scores:

* Understand the philosophy of the Ocean Health Index
    + understand what goals represent and how they are modeled 
    + understand what pressures and resilience are included 
    + understand how reference points are set
* Develop strategic plan and timeline
    + determine resources available
    + outline timeline with any meetings and workshops necessary
    + engage management early for results to be most useful (optional)
* Assemble a qualified team with diverse skills
    + have a broad scientific understanding and experience with environmental policy
    + are comfortable with handling large data sets, making decisions, and thinking creatively
    + can work with the software program R and user-created packages
    + can work with ArcGIS or other spatial analysis software
    + collaborate well in a multidisciplinary team, remotely and in person
* Identify local characteristics and priorities
    + should any goals be removed?
    + should any goals be redefined?
    + should other goals be added?
    + should goals be weighted unequally? 
    + what are pressures to the local system?
    + what resilience measures (laws, regulations) are in place locally?
    + what local cultural preferences or priorities should be captured in the assessment? 
* Decide the spatial scale for regions within the study area 
    + we recommend multiple regions
    + regions within the study area should be at the smallest scale the data allow
    + in what spatial scale are data most frequently reported?
    + in what spatial scale are policy decisions made (optional)?
* Discover and gather appropriate data and indicators
    + what local data and indicators are available for goal models?
    + what local data and indicators are available pressures and resilience?
    + how would reference points be set for local data?
    + do local data and indicators capture the philosophy of the Ocean Health Index?
    + are local data and indicators at the appropriate spatial and temporal scales?
    + process and format data and indicators to create data layers* for the Toolbox
* Modify goal models and set reference points:
    + can goal goal models be refined using locally available data and indicators?
    + can reference points be refined using locally available data and indicators?
    
    
\* Each data component that is included in the OHI is called a **data layer** because it will be combined with others to create the most complete picture of ocean health. Many data layers are rescaled from 0-1 to be combined with others on the same unitless scale.
    


## Discovering and Gathering Appropriate Data and Indicators

The Ocean Health Index (OHI) spans disciplines and integrates diverse data and sources to give a comprehensive assessment of ocean health. A hallmark of the OHI is that it uses freely-available data to create models that capture the philosophy of individual goals, and finding appropriate data requires research and creativity. There are many decisions to make when gathering from disparate sources, deciding reference points, and developing goal models.


Index scores are a reflection of data quality, and thus accessing the best data available is of highest importance. Data from existing environmental, social, and economic indicators may be used. All data will be rescaled to specific reference points (targets) before being combined; therefore setting these reference points at the appropriate scale is a fundamental component of any Ocean Health Index assessment. This requires the regional assessment team to interpret the philosophy of each Index goal and sub-goal using the best available data and indicators.  

Ocean Health Index scores can be recalculated annually as new data become available. This can establish a baseline of ocean health and serve as a monitoring mechanism to evaluate the effectiveness of actions and policies in improving the status of overall ocean health. This is good to keep in mind while looking for data: will it be available again in the future? It is also important to document the sources of all data so that it is both transparent where it came from and so that you will be able to find it again in the future. 


### Data gathering responsibilities

Gathering appropriate data requires searching for and accessing freely-available data. It is important that team members responsible for data discovery make thoughtful decisions about whether data are appropriate for the regional assessment, and that they also get feedback from the full team to discuss the merits of different data sources. Data discovery and acquisition can be quite an iterative process, as there are both practical and philosophical reasons for including or excluding data, in addition to requiring access to the data.

### The process of data discovery

In terms of philosophical considerations, the most important thing to remember when gathering data is that the data must contribute to measuring ocean health. Many data sources that enhance our knowledge of marine processes may not directly convey information about ocean health and may not be appropriate within the OHI framework. Because of this, compiled indicators can sometimes be more suitable than would raw data measuring single marine attributes.

Begin by understanding and comparing the best approaches used in assessments that have been completed, including global assessments, Brazil, and the US West Coast. If finer-resolution local data were available in the study area, they could be used either in a newly developed regional goal model using locally appropriate and informed approaches, or in the existing global goal model. When local data were not available, the same global-scale data were used with the original global goal model, which is least desirable because it does not provide more information than the global study. When looking for data, the following decision tree may be useful. This should be a goal-by-goal process:

![](./fig/data_discovery.png)

Searching for data requires exploring data sources beyond any single discipline, and a good place to start is with an internet search. Internet searches can lead to published data in government and non-governmental organization reports, peer-reviewed articles, and masters and doctoral dissertations. Not everything will be freely available online but it is sometimes possible to request access.

It is good practice to keep detailed notes of attributes of each potential data layer, since there may be different options to work with. Searching for data by goal is a good approach, although some data layers will be used for multiple goals.

### Requirements for data layers

Four requirements to remember when investigating (or ‘scoping’) potential data layers are: 

1. relevance to ocean health 
2. how to the reference point
3. spatial scale
4. temporal scale. 

#### Relevance to ocean health

There must be a clear connection between the data and ocean health, and determining this will be closely linked to each goal model.

#### Reference point

As each data layer must be scaled to a reference point, as you consider different data sources it is important to think about or identify what a reasonable reference point may be. Ask the following types of questions as you explore data possibilities:

  * Is there a known relationship associated with these data?
  * Have policy targets been set regarding these data?
  * Would a historic target be appropriate?
  * Could a region within the study area be set as a spatial target?
  
#### Appropriate spatial scale

Data must be available for every region within the study area.*

#### Appropriate temporal scale

Data must be available for at least five years to calculate the trend. Longer time series are preferable because this can be used to set temporal reference points.*

\* It is not always possible to meet the spatial and temporal requirements with each data layer. In these cases it can still be possible to use these data if appropriate gap-filling techniques are used. It is important that data satisfy as many of these requirements as possible, and in cases where creative ways of working with such data are not possible, it might be better to exclude these data from the analyses and try a different approach.


### Example: US West Coast data discovery

Below are examples of some decisions made when exploring available data for the US West Coast regional assessment. Determining whether certain data could be included started with a good understanding of the data layers and models included in the global assessment, and because the US West Coast is a data-rich region, finer-resolution local data could be used in place of many of the global data layers.

#### Reasons data were excluded
There are a lot of existing data that contribute to our scientific understanding of ocean processes and interactions but that are not ideal for the OHI. Reasons to exclude data occur both on a practical level (do data adhere to the requirements above?) and on a philosophical level, which requires reflecting on the relationship with ocean health. Some common reasons for excluding data are listed below:

  * 
  **The data do not cover the entire area of the reporting region**. The state of California had excellent, long-term data on public attendance at state parks that would have been quite useful in the calculation of the tourism and recreation goal. However, Oregon and Washington did not have these same data so they were not used.

  * 
  **There is not a clear and scientifically proven connection between the metric described by the data and ocean health**. 
Along the US West Coast, kelp beds are a very important habitat because of their contribution to biodiversity and coastal protection. However, kelp coverage is quite variable and is driven primarily by abiotic natural forcing (wave/storm disturbance and temperature) and thus kelp coverage is not a good metric of ecosystem health. For these reasons kelp coverage was not included in the assessment.

  * 
  **The feature being measured may provide benefits to people, but this feature is not derived from the ocean**.
Sea walls and riprap provide coastal protection to many people along the US West Coast. However, these structures are not a benefit that is derived from the ocean itself, so only biogenic habitats were included in the calculation of this goal. These data can be included as a pressure due to habitat loss.

  * 
  **Data collection is biased and might misrepresent ocean health**.
The US Endangered Species Act identifies a species list focused on species of concern within the US. As such, these data are biased in the context of ocaean health since they assess only species whose populations may be in danger. For the calculation of the biodiversity goal, using these data would be inappropriate because this goal represents the status of all species in the region, not just those that are currently of conservation concern. Using these data may have shown the status of biodiversity to be lower than it really is because the selection of species to assess was already biased towards species of concern.

#### Creative approaches to using data

  * 
  **Time series data are not long enough to calculate a trend or a reference point (when a historical reference point is most appropriate)**.
For the US West Coast, available data measure the current extent of seagrass habitats, however, these only exist for one time point in most areas so could not be used to calculate the trend or set a historical reference point. As these were the best data available for habitat coverage, we built a model to calculate the status and trend of seagrass habitats using other data that were available over time. A reasonable approach was to model the pressures exerted on seagrasses over time as a proxy for seagrass health.

