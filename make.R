# TODO: 
# - use bibliography
# use title. problem now is that input md docs already using header 1

# load libraries ----
library(knitr)
library(rmarkdown)
library(stringr)

# copy ohimanual/README.md into ohimanual/tutorials/README.md
stopifnot(file.copy('~/github/ohimanual/tutorials/README.md', file.path('~/github/ohimanual/README.md'), overwrite=T))

# set variables ----
title = 'The Ocean Health Index Assessment Manual'
wd = '~/github/ohimanual/tutorials'
in_md = c(
  'README.md',
  'intro_assessment.md',
  'overview_webapp.md',
  'before_conduct_assessment.md',
  'conduct_assessment.md',
  'intro_to_tbx.md',
  'file_system.md',
  'gathering_appropriate_data.md',
  'update_pressures_resilience.md',
  'formatting_data.md',
  'install_tbx.md',
  'accessing_a_repo_with_github.md',
  'github_architecture.md',
  'use_tbx.md',
  'use_tbx_to_modify_data_layers.md',
  'use_tbx_to_modify_pressures_resilience.md',
  'use_tbx_to_modify_goal_models.md',
  'use_tbx_to_remove_goal_models.md',
  'example_modifications_with_tbx.md',
  'frequently_asked_questions.md',
  'toolbox_troubleshooting.md')
out_md = 'ohi-manual.md'


# cleanup original ----

## rename some .md files
for (f in list.files(getwd(), glob2rx('*.md'))){
  
  s = readLines(f, warn=F, encoding='UTF-8')
  # s = str_replace_all(s, fixed('using_the_ohi_toolbox_app.md'), fixed('toolbox_app_overview.md'))
  # s = str_replace_all(s, fixed('accessing_a_repo_without_GitHub.md'), fixed('accessing_a_repo_without_github.md'))   
  # s = str_replace_all(s, fixed('accessing_a_repo.md'), fixed('accessing_a_repo_with_github.md')) 
  # s = str_replace_all(s, fixed('calculate_regional_assessment_score.md'), fixed('use_tbx_regional_assessment.md')) 
  # s = str_replace_all(s, fixed('regional_assessments_intro.md'), fixed('conduct_regional_assessment.md')) 
  # s = str_replace_all(s, fixed('conduct_regional_assessment.md'), fixed('regional_assessments_intro.md')) 
  # s = str_replace_all(s, fixed('regional_assessments_intro.md'), fixed('regional_assessment_intro.md'))  
  # s = str_replace_all(s, fixed('github_repos.md'), fixed('install_tbx_regional_assessment.md')) 
  # s = str_replace_all(s, fixed('toolbox_app_overview.md'), fixed('overview_toolbox_app.md')) 
  s = str_replace_all(s, fixed('regional_assessment_intro.md'), fixed('intro_regional_assessment.md')) 
  writeLines(s, f)  
  
}



# rename *.png
setwd('~/github/ohimanual/tutorials/fig')
for (f in list.files(getwd(), glob2rx('zfig_*'))){
  file.rename(f, str_replace(f, 'zfig_',''))
}
# update fig paths in *.md
setwd(wd)
for (f in list.files(getwd(), glob2rx('*.md'))){
  
  s = readLines(f, warn=F, encoding='UTF-8')
  s = str_replace_all(s, fixed('](zfig_'), fixed('](./fig/'))
  writeLines(s, f)  
  
}

# move contents of /toolbox_manual/ folder out
for (f in list.files(getwd(), glob2rx('*.md'))){
  
  s = readLines(f, warn=F, encoding='UTF-8')
  s = str_replace_all(s, fixed('/toolbox_manual/'), fixed('/'))
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
    number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
    self_contained=F, theme='default',
    highlight='default', mathjax='default', template='default',
    toc=T, toc_depth=3), 
  clean=T, quiet=F,
  output_file = paste0(pfx, '.html'))
cat('---
layout: page
title : Manual
header : The Ocean Health Index Assessment Manual
group: navigation
---
{% include JB/setup %}
', file='~/github/ohi-science.github.io/manual/index.html')
cat(
  readLines(paste0(pfx, '.html')), 
  file='~/github/ohi-science.github.io/manual/index.html',
  append=T)
# #file.copy(paste0(pfx, '.html'), '~/github/ohi-science.github.io/manual/index.html', overwrite=T)
dir.create('~/github/ohi-science.github.io/manual/fig', showWarnings=F)
file.copy('fig', '~/github/ohi-science.github.io/manual', overwrite=T, recursive=T)
system('cd ~/github/ohi-science.github.io; git pull; git add -A; git commit -m "update manual"; git push')

## to resize already existing figures. Check folder paths.
# dir.create('~/github/ohimanual/tutorials/fig/_resized', showWarnings=F)
# for (f in list.files('~/github/ohimanual/tutorials/fig/_originals','*.\\.png$')){ # f = list.files('~/github/ohimanual/tutorials/fig','*.\\.png$')[1]
#   f_old = file.path('~/github/ohimanual/tutorials/fig/_originals', f)
#   f_new = file.path('~/github/ohimanual/tutorials/fig/_resized', f)
#   dpi = 72
#   width_in = 10
#   height_in = 6
#   if (!file.exists(f_new)){
#     system(sprintf("convert -density %d -resize '%dx%d' %s %s", dpi, width_in * dpi, height_in * dpi, f_old, f_new))
#   }
# }


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
    toc = T, toc_depth = 4, number_sections = T,
    fig_width = 6.5, fig_height = 4.5, fig_crop = TRUE,
    fig_caption = T, highlight = "default", template = "default",
    keep_tex = F, latex_engine = "pdflatex", 
    includes = NULL, pandoc_args = NULL), 
  clean=T, quiet=F,
  output_file = paste0(pfx, '.pdf'))
