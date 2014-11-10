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

### Updating resilience_matrix.csv

`resilience_matrix.csv` maps the different types of resilience (columns) with the goals that they affect (rows). New resilience layers may be added to `resilience_matrix.csv` based on finer-scale local information either in response to a new pressures layer, or as a new independent measure. Any added layer must be associated with a pressures layer that has a weight of 2 or 3 in the Ocean Health Index framework so that resilience measures can mitigate pressures in each region.

Each goal must have a resilience measure associated with it. In the figure below, the Toolbox would give an error because there are no resilience layers indicated for the natural products (NP) goal. 
  
![](./fig/resil_mtx_bad.png)  
  
