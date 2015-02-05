# Writing and editing the Manual

## Overview

The manual is written in [Markdown](http://daringfireball.net/projects/markdown/syntax), which can render to .html, .docx, .pdf. This enables us to post directly online, generate pretty pdfs, and also circulate word documents with track changes.

Each section of the manual is written in a separate markdown file (**.md**) rather than one big document: it makes it easier as we shift sections around--which we do: we haven't quite found the right order to put these in yet (but I think we're close).

## Organization

All of the markdown files are in `~/github/ohimanual/content`.

Each file is named so that it is mirrors the section header. So the first header of `accessing_github_repos.md` is `## Accessing GitHub Repositories`. Note: if we rename any files, we will need to register it in `make.r` (see below).

Note: this document is also saved in `~/github/ohimanual/content`. These sorts of tutorials are good reference, good to pass along, and also, depending on the topic, may be good for seaming into the manual. Let's name any tutorial documents like this with a preceding (example: `tutorial_*.md`) so that we can identify them easily.

## Rendering

`~/github/ohimanual/make.R` does all of the rendering magic, originally written by BB. We specify which order we want all of the `.md` files, and this code will seam them together in a huge `.md` file, which it will then render as we choose (currently .html, .docx, .pdf).

`make.r` also pushes the .html file to `ohi-science.org/manual` (which actually is the  website for another GitHub repository called [ohi-science.github.io](https://github.com/OHI-Science/ohi-science.github.io)).

There is also some historic filename-changing-clean-up that still exists in the file, and I think is good to keep as a record for the time being.

All you need to do is run this file, using the **source** button at the top right of the 'Source' pane in RStudio, which is the one pane that displays the file.


## Workflow

I make edits to the manual using [Atom](https://atom.io/), since you can render the text in real time (Packages > Markdown Preview > Toggle Preview).

Then, I use RStudio to seam the files together using `make.r`, and to commit and push the changes to GitHub.
