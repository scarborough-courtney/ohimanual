## Modifying goal models
In the discussion on data layers above, when an existing layer is still used as before but has a new *filename*, nothing further needs to be done for the Toolbox to incorporate this updated layer. However, if a new layer has been added to the `layers` folder and registered in `layers.csv` (and potentially added to the pressures or resilience matrices), the Toolbox will still not use it unless it is incorporated into a goal model.  
  
**There are several steps to follow when working with goal models:**

1. Update `functions.r`
2. Check and possibly update `goals.csv`

### Update *functions.r*

To incorporate a new data layer into a goal model, open `functions.R`: this script contains all the models for each goal and sub-goal. A member of your team with the ability to write R code will need to translate the updated goal model into the Toolbox format. Follow the structure of existing goal models in order to incorpoarte the new data layers, noting the use of certain R packages for data manipulation. 

The image below shows the navigation pane in RStudio that can be used to easily navigate between goal models. 

![](./fig/navigation_functions.png)

### Check and possibly update *goals.csv*

*goals.csv* provides input information for *functions.r*, particularly about goal weighting and function calls. It also includes descriptions about goals and sub-goals, which is presented on the project website. 

Changing goal weights will be done here by editing the value in the *weight* column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a proportion of the goal totals. `goals.csv` also indicates the arguments passed to `functions.r`. These are indicated by two columns: *preindex_function* (functions for all goals that do not have sub-goals, and functions for all sub-goals) and *postindex_function* (functions for goals with sub-goals).

![](./fig/registering_goals.png)


**When updating layers or goal models, it is important to ensure that information called from *goals.csv* is correct**: 

- check the years
- etc...

### Example modification: 

Suppose in your study area, there are new data to include in the artisanal fishing opportunity goal to refine understanding of this goal. Your team has decided to add an 'artisanal access' component to the goal model because of locally available data. Once this data is obtained and properly formatted, the data layer is saved as `ao_access_art`. To include this new information in the goal model, you will need to do the following:

1. register the layer in `layers.csv`
2. update the goal model in `functions.r`
3. update the goal call in `goals.csv`


> 1. register in `layers.csv`

![](./fig/new_layer.png)


> 2. update goal model

![](./fig/functions_explained.png)

> 3. update goal call in goals.csv

[develop]
