# Updating pressures and resilience matrices

Updating (adding, modifying, and/or removing) pressures and resilience can be done in the relevant folders shown below. Specific instructions follow below.

![alt text](./fig/pressures_resilience_matrix.png)

- **pressures_matrix.csv:** Describes the layers (‘layers’ column in layers.csv) needed to calculate pressure categories. The matrix has weights assigned that were determined by Halpern et al. 2012 (Nature) based on scientific literature and expert opinion.

- **resilience_matrix.csv:** Describes the layers (‘layers’ column in layers.csv) needed to calculate resilience categories. for more details.

- **resilience_weights.csv:** Describes the weight of various resilience layers that were determined by Halpern et al. 2012 (Nature) based on scientific literature and expert opinion.


# Update pressures_matrix.csv

[add content]

# Update resilience_matrix.csv

When you update layers in the `layers` folder and in `layers.csv`, you will need to update the `resilience_matrix.csv` file as well.

A few things about these updates: 
1. There must be at least one field for each goal. Correct:

  > ![](./fig/resil_mtx_good.png)  

  Incorrect:
  
  > ![](./fig/resil_mtx_bad.png)  
  
  

# Example: Adding a new pressure layer
In this example there is a new pressure layer to include: the effects of desalination operations. Adding this pressure requires the following steps: 

1. create pressures layer(s); save in the `layers` folder
2. register pressures layer(s) in `layers.csv`
3. register pressures layer(s) in `pressures_matrix.csv`
  + 3a decide which pressure category
  + 3b set the pressures weighting


1. and 2. Create and register the new layers called *po_desal_in*, and *po_desal_out*

![alt text](./fig/register_pressure.png)

3. Register the new layers in `pressure_matrix.csv`. 

3a. Pressures are grouped by category, indicated by a prefix (for example: *po_* for the pollution category). Each category is calculated in a different way, so it is important to register the new pressure with the appropriate category prefix decided by your regional assessment team.

![alt text](./fig/pressure_categories.png)

3b. Set the pressures weighting by goal based on scientific literature and expert opinion (3=high pressure, 1=low pressure). These weights are relative across the rows. Setting these weights will take deliberation with your regional assessment team. 

![alt text](./fig/register_new_pressures.png)


Also see: [calculate_pressures](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/calculating_pressures.xlsx) and [calculate_resilience](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/calculating_resilience.xlsx) for more details about calculating pressures and resilience.



