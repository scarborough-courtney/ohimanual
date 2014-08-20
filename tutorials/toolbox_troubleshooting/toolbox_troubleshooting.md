# Toolbox Troubleshooting

The Toolbox prints messages during its processing to help guide error checking and debugging. Here are a few troubleshooting tips.  
(\*\* note: this page is under development).

## Calculating Pressures...

### 'The following components for [goal] are not in the aggregation layer [layer]...'

Example:
```
Running Setup()...
Calculating Pressures...
The following components for NP are not in the aggregation layer np_harvest_product_weight categories (fish_oil, ornamentals, seaweeds): corals, shells, sponges
Error in data.frame(names(P), P) : 
  arguments imply differing number of rows: 0, 1
```  
  
  > ![](zfig_tblshoot_pressures.png)  
  
This error means you should update your pressures matrix because it expects there to be components that your region does not have.

## Calculating Resilience ... 

### 'Error in match(x, table, nomatch = OL) : object id_num not found'

  > ![](xfig_error_resil_mtx.png)  

This error means you should check that there is at least one entry for each goal (for each row) in `resilience_matrix.csv`.
