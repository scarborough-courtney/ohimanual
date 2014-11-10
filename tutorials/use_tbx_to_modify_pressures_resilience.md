## Modifying pressures and resilience matrices

Previous decisions made with your team will identify if any pressures layers should be added to the pressures and/or resilience matrices, and if so, which goals the pressure affects and what weight they should have. Then, you can transfer this information into the Toolbox's `pressures_matrix.csv` and `resilience_matrix.csv` (located in the `[assessment]/[scenario]/conf` folder).


### Updating pressures_matrix.csv

`pressures_matrix.csv` maps the different types of ocean pressures (columns) with the goals that they affect (rows). Adding a new pressures layer to `pressures_matrix.csv` requires adding a new column with the pressure layer name. The name should be short but descriptive. The name should also include a prefix to indicate the pressure category. There are five physical categories and one social category:

* *po_* = pollution
* *hd_* = habitat destruction
* *fp_* = fishing pressure
* *sp_* = species pollution
* *cc_* = climate change
* *ss_* = social pressure  

For example, `po_trash` is a pollution layer with trash on beaches, and `sp_alien` is species pollution due to alien (invasive) species.

It is important to note that the matrix identifies the pressures relevant to each goal, and which weight will be applied in the calculation. But each pressure is a data layer, located in the `subcountry2014/layers` folder. This means that pressure layers need information for each region in the study area, and some layers will need to be updated with local data.  

**Example: Adding a new pressure layer**

In this example there are two new pressure layers to include: the effects of desalination operations. The new layers are called *po_desal_in*, and *po_desal_out*.  

Adding these pressure layers to the Toolbox requires the following steps:

> 1. create new pressure layer(s) and save in the `layers` folder
> 2. register pressure layer(s) in `layers.csv` 
> 3. register pressure layer(s) in `pressures_matrix.csv`
  + a. set the pressure category  
  + b. identify the goals affected and set the weighting
  + c. modify the resilience matrix (if necessary) 


**1. Create the new pressure layers**

Suppose that there is information 

- for each region
- compliance reports
- rescale from 0 to 1
- save in `layers` folder

**2. Register the new layers in `layers.csv`**

![](./fig/register_pressure.png)

**3. Register the new layers in `pressure_matrix.csv`.**  

**3a.** This step should simply be transferring previous decisions made by your team into the Toolbox format. Create a data layer name with a prefix that signifies the pressure category (for example: *po_* for the pollution category). Each category is calculated separately before being combined with the others, so it is important to register the new pressure with the appropriate category prefix decided by your regional assessment team.  

**3b.** This step is also transferring prior decisions into the Toolbox format. Mark which goals are affected by this new pressure, and then set the weighting. Pressures weighting by goal should be based on scientific literature and expert opinion (3=high pressure, 1=low pressure). 

![](./fig/register_new_pressures.png)

**3c.** [develop]



### Updating resilience_matrix.csv

`resilience_matrix.csv` maps the different types of resilience (columns) with the goals that they affect (rows). New resilience layers may be added to `resilience_matrix.csv` based on finer-scale local information either in response to a new pressures layer, or as a new independent measure. Any added layer must be associated with a pressures layer that has a weight of 2 or 3 in the Ocean Health Index framework so that resilience measures can mitigate pressures in each region.

Each goal must have a resilience measure associated with it. In the figure below, the Toolbox would give an error because there are no resilience layers indicated for the natural products (NP) goal. 
  
![](./fig/resil_mtx_bad.png)  
  
