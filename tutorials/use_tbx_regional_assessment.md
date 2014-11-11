# Using the Toolbox for a Regional Assessment

This page explains how to incorporate all of the pre-Toolbox decisions your team has made for your regional assessment into the OHI framework and your repository. Having a good understanding of how the Toolbox is structured can also help identify what must be modified for a regional assessment, particularly with data and models. This page assumes a good understanding of the Toolbox file system.  

The most common modifications you will make to your repository are:

- **modifying pressures and resilience matrices**
- **modifying and creating data layers for status, trend, pressures and resilience**
- **modifying goal models**
- **removing goals**


These changes are to be made in the following files (see sections below for detailed instructions):

![](./fig/china2014_descr3.png)


## Modifying goal models
In the discussion on data layers above, when an existing layer is still used as before but has a new *filename*, nothing further needs to be done for the Toolbox to incorporate this updated layer. However, if a new layer has been added to the `layers` folder and registered in `layers.csv` (and potentially added to the pressures or resilience matrices), the Toolbox will still not use it unless it is incorporated into a goal model.  
  
**There are several steps to follow when working with goal models:**

1. Update `functions.r`
2. Check and possibly update `goals.csv`

### Update *functions.r*

To incorporate a new data layer into a goal model, open `functions.R`: this script contains all the models for each goal and sub-goal. In RStudio, there is a navigation pane that can be used to navigate between them:

![](./fig/navigation_functions.png)

### Check and possibly update *goals.csv*

*goals.csv* provides input information for *functions.r*, particularly about goal weighting and function calls. It also includes descriptions about goals and sub-goals, which is presented in the Toolbox Application. 

Changing goal weights will be done here by editing the value in the *weight* column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a percentage of the goal totals. `goals.csv` also indicates the arguments passed to `functions.r`. These are indicated by two columns: *preindex_function* (functions for all goals that do not have sub-goals, and functions for all sub-goals) and *postindex_function* (functions for goals with sub-goals).

![](./fig/registering_goals.png)


**When updating layers or goal models, it is important to ensure that information called from *goals.csv* is correct**: 

- check the years
- etc...

### Example modification: 

In this example we will walk through how to add a new layer to a goal model by following these steps:

1. decide to add artisanal access component to the model because of locally available data
2. prepare the data file; save layer ao_access_art
3. register in `layers.csv`
4. update goal model in `functions.r`
5. update goal call in `goals.csv`

Steps 1. and 2. are done outside of the Toolbox

> 3. register in `layers.csv`

![](./fig/new_layer.png)


> 4. update goal model

![](./fig/functions_explained.png)

> 5. update goal call in goals.csv

[develop]


## Removing goals
If a goal is not relevant in your region, it is possible to remove the goal completely from the calculation. There are four places where you will need to remove the reference to this goal:

1. `functions.r`
2. `goals.csv`
3. `pressures_matrix.csv`
4. `resilience_matrix.csv`

![*Failing to delete all referenced layers after the goal is deleted will prompt a number of error messages.*](./fig/remove_goal.png)

**Example: Removing carbon storage (CS) goal**

1) Remove the carbon storage (CS) goal model from `functions.r`:

![Delete the highlighted text that references the CS layers and calculates CS goal status, trend, and scores](./fig/functions_delete.png)

2) Remove the CS row from `goals.csv`:

![Delete the highlighted row that contains the CS goal](./fig/goals_delete.png)

3) Remove all CS rows from `pressures_matrix.csv`:

![Delete the highlighted rows that contain CS pressures](./fig/delete_pressures.png)

4) Remove all CS rows from `resilience_matrix.csv`:

![Delete the highlighted rows that contain CS resilience](./fig/delete_resilience.png)
