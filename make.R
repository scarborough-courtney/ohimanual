# TODO: 
# - use bibliography
# use title. problem now is that input md docs already using header 1

# load libraries ----
library(knitr)
library(rmarkdown)
library(stringr)

# set variables ----
title = 'Tutorials for the Ocean Health Index'
wd = '~/github/ohimanual/tutorials'
in_md = c(
  'software_for_OHI.md',
  'accessing_a_repo.md',
  'accessing_a_repo_without_GitHub.md',
  'syncing_forks.md',
  'Rmarkdown_tips.md',
  'toolbox_troubleshooting.md')
out_md = 'tutorials.md'

# cleanup original ----

# rename *.png
setwd('~/github/ohimanual/tutorials/fig')
for (f in list.files(getwd(), glob2rx('zfig_*'))){
  file.rename(f, str_replace(f, 'zfig_',''))
}
# update paths in *.md
setwd(wd)
for (f in list.files(getwd(), glob2rx('*.md'))){
  
  s = readLines(f, warn=F, encoding='UTF-8')
  s = str_replace_all(s, fixed('](zfig_'), fixed('(./fig/'))
  writeLines(s, f)  
  
}

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
