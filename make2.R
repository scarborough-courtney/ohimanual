# Ocean Health Index, Santa Barbara, CA
# last updated: 05 May 2015

##### Summary: the goal of this code is to combine the text in the `conceptual` folder into one markdown document for reading and editing purposes.

# Step A. Loading Libraries, Directories, Functions:
# Note: this code is mainly copied form `make.R` but changed all instances of variables to "v2" just in case.

# load libraries ----
library(knitr) # install.packages("rmarkdown")
library(rmarkdown)
library(stringr)

# set working directory 
getwd()
here <- "./conceptual" #creating variable for working directory - can change this
setwd('./conceptual')
getwd() #double checking

# set variables ----
titlev2 = 'The Ocean Health Index Conceptual Guide'

# helper functions ----
cat_mdv2 = function(
  files_mdv2 = setdiff(list.files(getwd(), glob2rx('*.md')), out_mdv2),
  out_mdv2  = '_all_.mdv2'){
  
  if (file.exists(out_mdv2)) unlink(out_mdv2)
  
  cat('---\n', 'title: ', titlev2, '\n---\n\n', sep='', file=out_mdv2, append=T)
  
  for (md in files_mdv2){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_mdv2, append=T)
  }
}


# Step B. This is the order of contents. Change it as needed, noting that these files must be in this directory for the time being. If we want to string 'content' and 'conceptual' together, we'll have to change the wd's.
# note: to seam in pages from `content`, use the following format below:   '~/github/ohimanual/content/AO_practical.md',

in_mdv2 = c(
  'Need_For_and_Benefits_of_OHI.md',
  'Task_Timeline.md',
  'Phase_One.md',
  'What_is_OHI.md',
  'Why_ten_goals.md',
  'How_Are_Goals_Weighted.md',
  'FP_Philosophy.md',
  'AO_Philosophy.md',
  'NP_Philosophy.md',
  'CS_Philosophy.md',
  'CP_Philosophy.md',
  'LE_Philosophy.md',
  'TR_Philosophy.md',
  'SP_Philosophy.md',
  'CW_Philosophy.md',
  'BD_Philosophy.md',
  'Reference_Points.md',
  'How_Is_The_Index_Calculated.md',
  'Understanding_Status.md',
  'Understanding_Trend.md',
  'Understanding_Pressures.md',
  'Understanding_Resilience.md',
  'Pres_Resi_interactions.md',
  'Understand_Philosophy_of_Index.md',
  'Understand_Scales_of_Assessement.md',
  'Determine_the_Need_and_Purpose.md',
  'Phase_two.md',
  'Understand_Requirements_for_Assessment.md',
  'Funding.md',
  'Data_Requirements.md',
  'Planning_and_Partnering.md',
  'Who_Should_Be_Involved.md',
  'Conducting_a_Stakeholder_Analysis.md',
  'Introducing_Concept_to_Stakeholders.md',
  'Considerations_for_Joint_Planning.md',
  'Vision.md',
  'Objectives.md',
  'Spatial_Scale.md',
  'Strategy.md',
  'Costs_and_Financial_Planning.md',
  'Adaptive_Management.md',
  'Phase_three.md',
  'Phase_Four.md',
  'Outreach_and_Communications.md',
  'Communication_and_Outreach_Strategy.md',
  'Disseminating_Findings.md',
  'Communicate_Results_with_Partners.md',
  'Develop_and_Implement_Policies_and_Management_Interventions_that_Respond_to_the_Priorities.md',
  'Monitor_and_Re-evaluate_to_Determine_Policy_Effectiveness_and_Set_New_Priorities.md',
  'glossary.md')

out_mdv2 = 'ohi-concguide.md' # <- this is the output "final" file.

#### testing ground
# playing around with a way to autmate this....  failed: toc <- list.files('.')
#ch1 <- "Adaptive_Management.md"
#ch12 <- c("Adaptive_Management.md","AO_Philosophy.md", recurusive = TRUE)
#knit("Adaptive_Management.md", "output.md", text = NULL)  #test1
#knit(ch1, "output2.md", text = NULL) #test2 works
#knit("Adaptive_Management.md","AO_Philosophy.md", "output3.md", text = TRUE) #test3 breask



# Step C. This is where the output gets strung together, here into both .md and .html for convenience.

cat_mdv2(in_mdv2, out_mdv2)               # use own md ordered file listing , output to ohi-manual.md
pfx = tools::file_path_sans_ext(out_mdv2)

# This is the final step to output to either a .md file for now. Next step: use the complex "render_html" etc. for website styling...
knit(out_mdv2, "ohi-concguide.md", text = NULL)

knit2html('ohi-concguide.md', 'ohi-concguide.html') # update: this is easier to read, IMHO, so I'll render this output to html too while we're at it...



# Step D. Continue editing!
# test