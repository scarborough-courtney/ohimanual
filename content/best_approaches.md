## Best approaches for goals, pressures and resilience

<!--- See GitHub issue #100 --->

The Ocean Health Index team has a wealth of knowledge from years of developing the Index. However, with each new independent assessment, the team is learning even more, and we hope to share that information with you and encourage outside dialogue on the best approaches to conducting an Independent Assessment.Your OHI+ assessment will also be invaluable in learning how to develop better and more appropriate techniques to changing goal models.

#### Synergies and Goals to approach together

> TIP: See section, **Assembling a Team**

Whether you are working goal-by-goal, or data layer by data layer, it is important to consider where you can find synergies. This will save you time, and effort, and will help build a picture of how your goals are interlocking in a way that is reflective of the actual linkages that exist in the coupled human and natural systems you are studying. Some examples include:

#### Do Habitat-Based Goals Together

You should do the habitat-based goals together. These include **Carbon Storage**, **Coastal Protection**, **Biodiversity: Habitats** in the Global Assessment. This will be more efficient because the spatial analyst can do the data manipulation to create the spatial layers that get used for these goals, based off the same source material. This will greatly expedite your data search, and layer preparation. If you wish to further coordinate these activities on a higher level, you could have the same team member coordinate activities for the development of these three goals.

If you look at `functions.R`, you will see that the reason this is the case is because the data layer, `Hab_extent`, is used in multiple places in the software:

* NP
* FIS
* CS
* CP

![Note that Habitat Extent appears in several goal model functions. ](https://docs.google.com/drawings/d/1HtrwjFi1Lod6B687nNTUPqK-MTAr9uwShooHUIu3Le4/pub?w=790&h=258)

#### Linkages: Note climate change connections

Climate change appears in several places in the global index, and will certainly influence numerous goals in your assessment. You will see that climate pressures include UV radiation, Sea Surface Temperature (SST, sea-levle rise (SLR), ocean acidification, and influence in the Global model the goals for Natural Products, Carbon Storage, Coastal Protection, Sense of Place, Livelihoods and Economies, and Biodiversity.


#### Linkages: Note the influence of trash

In the case of Global 2012, the **Clean Waters** goal is very much linked to the pressures because the same data layers for pressures are used as the input layers for the status, albeit transformed as (1 - value). Note that because trash is also a pressure, it affects other goals as well (TR, LSP/ICO/SP, LIV/ECO/LE, SPP/BD).

Other tips:

- Do the **Wild-Caught Fisheries** model and the fisheries-related pressures together. This is because you will already be searching for data on commercial high bycatch, low-bycatch,

- Do the **Mariculture** model and the Fisheries

#### Strategies for Assessment

Every Independent Assessment requires a plan of action. One approach would be to have **goalkeepers** for each goal <!---ADD more--->

> See **Assembling a Team**


### Using this Guide

For each goal and sub-goal model and for each assessment, we provide recommendations for conducting independent assessments.

For descriptions of the models, evolution of the approach, reference point, how to interpret the score, see the OHI **Conceptual Guide**>


****
<!---Duplicate from from Conceptual Guide--->

###Where to start?

Any assessment will depend on the available data, which requires creative thinking, particularly when ideal data are unavailable. Determining the appropriate scale and defining the study area and any regions within the study area will also depend on available data. The scale and resolution of available data can help inform the scale of the study area to be analyzed and how to divide it into regions.

#### To consider as you get started

Data included to calculate scores are partly based on the philosophical framework of the Ocean Health Index (see Part I), and partly based on data available. Several goals that combine across categories have many potential data sources that could be included (or excluded): in particular the natural products, livelihoods and economies, and habitat based goals. The existence of the data itself will drive a lot of these decisions, but here are some guidelines to help determine if data are appropriate philosophically:

* Do the data represent something truly ocean-based, and natural (i.e. not man-made)?
* How would the reference point be calculated?
* Do data cover the appropriate spatial scales?
* Do data cover the appropriate temporal scales?

###Which data are available?

Humans interact with and depend upon the oceans in complex ways, some of which are familiar and easy to measure, such as providing seafood, transporting goods, or disposing of waste. Other benefits are more difficult to measure, such as the way marine-related jobs indirectly affect coastal communities, how different habitats mediate storm damage or the benefits people receive or perceive simply from living near the ocean. Thinking creatively and exploring the data available can make the Index more representative of reality.

It is important to think creatively and beyond the interests of a specific institution or primary field of study. Google or other internet search engines are great starting places: investigate what kinds of information are available from government and public records, scientific literature, academic studies, surveys and reports or other sources.

Data used in the Ocean Health Index spans a wide array of disciplines, both within and outside of oceanography and marine ecology. Therefore, it is necessary to look beyond the most known or obvious data sources to find data relevant for the goals in the region. Discussions with colleagues, literature searches, emails to experts, and search engines are good ways to understand what kinds of data are collected and to hunt for appropriate data.

###What scale is appropriate?

Here it is important to think about why is there interest in completing an OHI assessment. If managers or policy makers are interested, at what scale do they work? Where are the political boundaries? These questions are important to keep the OHI assessment relevant, but ultimately data availability will be most important in how to define regional boundaries for the OHI.
