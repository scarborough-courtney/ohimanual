# makeR.r for R tutorials

# load libraries ----
library(knitr)
library(rmarkdown)
library(stringr)

# set variables ----
title = 'OHI and R Tutorials'
wd = '~/github/ohimanual/tutorials/R_tutes'
in_md = c(
  'R_tutes_intro.md',
  'R_tutes_tidyr.md',
  'R_tutes_dplyr.md', 
  'R_tutes_notes.md')
out_md = 'R_tutes_all.md'


# helper functions ----
cat_md = function(
  files_md = setdiff(list.files(getwd(), glob2rx('*.md')), out_md),
  out_md  = '_all_.md'){

  if (file.exists(out_md)) unlink(out_md)

  cat('---\n', 'title: ', title, '\n---\n\n', sep='', file=out_md, append=T)

  for (md in files_md){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_md, append=T)
  }
}

# concatenate and save as .md ----
setwd(wd)
cat_md(in_md, out_md)               # use own md ordered file listing , output to out_md
pfx = tools::file_path_sans_ext(out_md)