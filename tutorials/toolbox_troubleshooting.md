# Toolbox Troubleshooting

The Toolbox prints messages during its processing to help guide error checking and debugging. Here are a few troubleshooting tips. This section will be updated frequently; please share any problems that you encounter.  


## Loading RWorkspace on Restart

When you restart your R Session (Session > Restart R on a Mac), if you see that it is trying to load `ohicore`, it may give you an error:

  > ![](./fig/ohicore_load.png)
  
You do not want it to load `ohicore` or to save anything in your workspace. You will need to change the default setting from you **.Rproj** file. Steps to do this:

1. Go to Project Options, either in the pull-down menu or by double-clicking the .Rproj file:
   

  > ![](./fig/proj_op.png)
  
  > ![](./fig/proj_op2.png)
  
2. Change all options to **No:**
    
  > ![](./fig/proj_op3.png)
    
## Calculating Pressures...

### 'The following components for [goal] are not in the aggregation layer [layer]...'

Example:

> ![](./fig/troubleshoot_aggregation_layer.png)
  
  > ![](./fig/tblshoot_pressures.png)  
  
This error means you should update your pressures matrix because it expects there to be components that your region does not have.

### 'Error in matrix...'

Example: 
  > ![](./fig/tblshoot_pressures.png)  
  
This error means there is an empty column in `pressures_matrix.csv`, and the Toolbox cannot handle empty columns.

## Calculating Resilience ... 

### 'Error in match(x, table, nomatch = OL) : object id_num not found'

  > ![](./fig/error_resil_mtx.png)  

This error means you should check that there is at least one entry for each goal (for each row) in `resilience_matrix.csv`.
