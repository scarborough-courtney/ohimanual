# Accessing repositories without GitHub

### OHI regional assessments without GitHub
It is possible to conduct a regional assessment without having a GitHub account. You can do a one-time download from the GitHub repository and then work locally on your computer without syncing to the GitHub server. We do not recommend this because it is more difficult for you to track progress and decisions, and for us to help or advise you. We recommend [accessing a repository with GitHub](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo.md) but provide instructions here of how to access a repository without Github. We can always get your filesystem onto GitHub later. 

### What is needed?

> ![](./fig/overview_requirements_R.png)

### Install the latest version of R
Download [**R**](http://cran.r-project.org/) and install this on your computer. If you already have R installed, check the website for updates. There are frequent updates to the R software, and the current version is identified on the websited. Compare what is available from their wesite with what you already have on your computer by typing `sessionInfo()` into your R console. (This will also identify packages you have installed).

### Install the latest version of RStudio
While not required, we highly recommend working with [**RStudio**](http://www.rstudio.com/products/RStudio/), which is an interface that makes working with R much easier. RStudio also has great compatibility with GitHub so you can collaborate with your team directly from your R code. RStudio does not get updated as often as R does, but it is good to check for updates regularly. 

### Create your ohi-[assessment] repo
Contact the OHI team (bbest@nceas.ucsb.edu or lowndes@nceas.ucsb.edu) to create a repository for your group. The repository will be stored on github.com and called `OHI-Science/ohi-[assessment]`: for example, `github.com/OHI-Science/ohi-israel`.

### Download the repo to your computer
When your repository has been created, enter the url in to an internet browser (for example, `github.com/OHI-Science/ohi-israel`). Click `Download ZIP`.  
  
> ![](./fig/download_zip_sk.png)  
  
### Working locally

1. Unzip the downloaded folder `ohi-[assessment]-master` and save the folder on your computer. We recommend creating a folder called `github` in your root directory and saving your repository to this file path: `~/github/ohi-[assessment]`. This will make collaborating much simpler since everyone will work with the same file path. 

2. Double-click `ohi-[assessment]/ohi-[assessment].Rproj`: this will launch RStudio. Be sure to have the [latest version of R and RStudio](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/software_for_OHI/software_for_OHI.md).

3. Open `ohi-[assessment]/[scenario]/launch_app_code.R` (for example, `ohi-israel/med2014/launch_app_code.R`). You can open this from within RStudio: 
   > ![](./fig/RStudio_ohi-israel_sk.png)  
  
4. Launch the Toolbox user interface 
Run `launch_app_code.R` to launch the Toolbox user interface. Notice that when the user interface opens, it may not be able to display *Output Scores*. This is because they have not been calculated yet: select *Input Layer* instead to see the map:
   > ![](./fig/input_layer.png)  
  
5. Navigate through the Toolbox file system
Become familiar with the Toolbox [file system](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/3_File_system.md#the-ocean-health-index-toolbox-manual). \*\*Note: this page is under active development\*\*

6. To change data presented: 
Within the folder ohi-[assessment]/[scenario]layers, open a `.csv` file and see that there are fewer regions represented than in the [global **layers** folder](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/3_File_system.md#layers-folders).  

This is because we have modified all the files to coincide with the six regions in the `ohi-israel` assessment. All these files have the suffix _global2013.csv because they are just copies of the global assessment, with the same value copied into each regions. For example: *alien_species_global2013.csv* has six region identifiers (`rgn_id`s, consistent with `ohi-israel`'s six regions. 
  
  > ![](./fig/layers_example.png)  
  
At this point, only one file is specific to the assessment: `**ohi-[assessment]/[scenario]/layers/rgn_labels_[scenario].csv**`, which is the file that describes all the regions (in this example, in Hebrew): 

  > ![](./fig/rgn_example.png)  

  For the data layers that you will update, we suggest you replace the *\_global2013.csv* file, with a file that has a suffix identifying your scenario. So *alien_species_global2013.csv* would become *alien_species_med2014.csv* or *alien_species_israel2014.csv*. You can keep a copy of the old *_global2013.csv* file in a separate foler or delete it (there is a record of it on the GitHub website ([example](https://github.com/OHI-Science/ohi-israel/blob/master/med2014/layers/alien_species_global2013.csv)). 

7. Register the updated layers
`ohi-[assessment]/[scenario]/layers.csv` is a registry (directory) of where the Toolbox looks for the data it uses. When you change a filename to *_china2014.csv*, you will need to update the registry so the 'filename' column so the Toolbox know where to look.

  > ![](./fig/layers_folder.png)  



