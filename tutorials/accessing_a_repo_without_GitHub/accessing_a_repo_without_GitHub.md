# Accessing repositories without GitHub

### OHI regional assessments without GitHub
It is possible to conduct a regional assessment without having a GitHub account. You can do a one-time download from the GitHub repository and then work locally on your computer without syncing to the GitHub server. We do not recommend this because it is more difficult for you to track progress and decisions, and for us to help or advise you. We recommend [accessing a repository with GitHub](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo.md) but provide instructions here of how to access a repository without Github. We can always get your filesystem onto GitHub later. 


Hi Mian, 

I have prepared the files for you and have attached them here in ohi-china.zi file that you can change to .zip. 

Tomorrow I will write up documentation of how work with GitHub. It is possible to work with this before then without Github. Here is what you need to do:
save the ohi-china folder somewhere close to your root directory
open ohi-china/ohi-china.Rproj: this will launch RStudio
open ohi-china/china2014/launch_app_code.R within RStudioInline image 1
this will launch the Toolbox user interface. Notice that when the user interface opens, it cannot display Output Scores. This is because they have not been calculated yet. Change variable type to Input Variable to see the map: Inline image 3
Inline image 4
To change data presented: 
Within the folder ohi-china/china2014/layers, open a file to see that there are now only 11 regions shown. For example: alien_species_global2013.csv
This is because we have modified all the files to coincide with the 11 regions in the China assessment. All these files have the suffix _global2013.csv because they are just copies of the global assessment, spread across the 11 regions: all the data is the same. 
One file is specific to china2014: ohi-china/china2014/layers/rgn_labels_china2014.csv. This file describes the regions.
Inline image 5
So, for data layers that you will update, we suggest you copy the *_global2013.csv file, save it as _china2014.csv, delete the old data and input your new data there. 
Final step: ohi-china/china2014/layers.csv is a directory or a registry of where the Toolbox looks for the data it uses. When you change a filename to _china2014.csv, you will need to update the registry so the 'filename' column so the Toolbox know where to look. he plot.


