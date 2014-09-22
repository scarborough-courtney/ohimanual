# GitHub Repositories

## OHI and GitHub 
The Ocean Health Index (OHI) Toolbox is written in [R](http://cran.r-project.org/) and uses [GitHub](http://github.com), an [open-source development platform](http://en.wikipedia.org/wiki/GitHub), to develop and share software and data. GitHub has powerful versioning capabilities, which allows changes to be archived and tracked by each user. This is incredibly useful to not only document what work has been done, but how it differs from work done in the past, and who is responsible for the changes: it provides a record of all changes made. GitHub enables easy collaboration with others, including the OHI team. 
  
OHI has several **repositories** ('repos') where data and code are stored. From the [GitHub glossary](https://help.github.com/articles/github-glossary#repository): 

> A repository is the most basic element of GitHub. They're easiest to imagine as a project's folder. A repository contains all of the project files (including documentation), and stores each file's revision history. Repositories can have multiple collaborators and can be either public or private.


### OHI regional assessments and GitHub
[OHI-Science](https://github.com/OHI-Science) is the 'owner' of the OHI repositories stored on GitHub, and individual users contribute to these repositories when they have permission. A user works locally on their own computer, but syncs their work back to the repo on the server. Because there can be multiple users working on the same repo, there are specific steps involved, and GitHub has specific words for each of these steps, including **cloning** a repo from the server to a local repository, **committing** any changes made with a description, **pulling** any updates from the server's repo, and finally **pushing** committed changes back to the server. 

#### GitHub flow with _Fork & Pull Model_

|     | `http://github.com/ohi-science/[repo]` (web)  | `http://github.com/[user]/[repo]` (web) |   `~/Documents/github/[repo]` (local) |
| --- |------------------------  | -------------------------- | -------------- |
| -> |                          | -> [fork](https://help.github.com/articles/fork-a-repo)            | -> [clone](https://help.github.com/articles/fetching-a-remote)    |
| <- |  [merge pull request](https://help.github.com/articles/merging-a-pull-request) {admin} <-                           | <- [pull request](Fork & Pull Model) | <- [push](https://github.com/OHI-Science/ohiprep/wiki/Setup#rstudio), <-> [commit](https://github.com/OHI-Science/ohiprep/wiki/Setup#rstudio) |

where:
* `[repo]` is one of OHI-Science repositories: ohicore, ohiprep, etc.
* `[user]` is your GitHub username

see also:
* [GitHub flow in the browser](https://help.github.com/articles/github-flow-in-the-browser)

This example illustrates GitHub's collaborative workflow with the `ohi-israel` repo owned by `OHI-Science`:

> > > ![](./fig/clone_push_pull.png)
