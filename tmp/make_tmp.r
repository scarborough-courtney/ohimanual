# TODO: 
# - use bibliography
# use title. problem now is that input md docs already using header 1

# load libraries ----
library(knitr)
library(rmarkdown)
library(stringr)


# set variables ----
title = 'Conducting OHI Regional Applications (draft)'
wd = '~/github/ohimanual/tutorials'
in_md = c(
  'intro_regional_assessment.md',
  'conduct_regional_assessment.md',
  'gathering_appropriate_data.md')
out_md = 'regional-assessments.md'



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

# concatenate md ----
setwd(wd)
#cat_md()                           # use default file listing of *.md, default output _all_.md
#cat_md(md_order)                   # use own md ordered file listing , default output _all_.md
cat_md(in_md, out_md)               # use own md ordered file listing , output to tutorials.md
pfx = tools::file_path_sans_ext(out_md)

# render html ----
render(
  out_md, 
  html_document(
    number_sections=T, fig_width = 7, fig_height = 5, fig_retina = 2, fig_caption = T, smart=T,
    self_contained=T, theme='default',
    highlight='default', mathjax='default', template='default',
    toc=T, toc_depth=3), 
  clean=T, quiet=F,
  output_file = paste0(pfx, '.html'))

# render docx ----
render(
  out_md, 
  word_document(
    fig_caption = T, fig_width = 7, fig_height = 5, 
    highlight='default', reference_docx='default'), 
  clean=T, quiet=F,
  output_file = paste0(pfx, '.docx'))

# render pdf ----
render(
  out_md, 
  pdf_document(
    toc = T, toc_depth = 3, number_sections = T,
    fig_width = 6.5, fig_height = 4.5, fig_crop = TRUE,
    fig_caption = T, highlight = "default", template = "default",
    keep_tex = F, latex_engine = "pdflatex", 
    includes = NULL, pandoc_args = NULL), 
  clean=T, quiet=F,
  output_file = paste0(pfx, '.pdf'))

## move files to tmp folder ----

for (f in list.files(getwd(), glob2rx('regional-assessments.*'))){
  
  file.copy(file.path('~/github/ohimanual/tutorials', f), 
            file.path('~/github/ohimanual/tmp', f), overwrite=T)
  file.remove(file.path('~/github/ohimanual/tutorials', f))
              
}

# --- fin ---


