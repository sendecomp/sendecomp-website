---
layout: toc
title: Edit This Website
---

# Edit This Website

## Simple

This section contains step-by-step instructions for making modifications to the dynamically generated content of this website.
Data on group members, publications, research areas, and awards is all stored in text files.
These text files are then parsed to generate the web pages you see.

### Obtain Permissions

The easiest way to modify the text files is via GitHub, a website we use to track changes to publications and code.
However, you will need to be granted access, which requires the following:

1. [Make a GitHub account](https://www.github.com/join)
2. Request owner permissions to SeNDeComp GitHub Group by contacting an existing group member
    - Provide them with your *GitHub username*
3. Check your email and accept the group invitation

If you've already done the things above, go to step 2.

### Make Modifications

The next step is to actually make your desired changes.
The type of change you want to make will determine the file you need to edit.
The table below tries to direct you to the proper file.

| What You Want to Modify | File to Edit          |
| :---------------------- | :-------------------- |
| Publications            | [publications.bib][1] |
| Members                 | [members.yml][2]      |
| Projects                | [projects.yml][3]     |
| Related Labs            | [labs.yml][4]         |
| Documents               | [docs.yml][5]         |
| Venues                  | [venues.yml][6]       |
| Awards                  | [awards.yml][7]       |
{:.table .table-condensed}

Once you know which you want to modify, click on its appropriate link above to go its GitHub page.
Next, assuming you are logged in to GitHub, click on the pencil icon in the upper righthand corner of the text file content window.

![GitHub Edit File Button Location](edit-yml-figure-1.png){:.img-responsive .img-thumbnail width="800px"}

This will take you to a page where you can edit the file's contents directly in the browser.

**<i class="fa fa-exclamation-triangle"></i>
Each text file in the table above has documentation at the top of it explaining its structure - you must follow the file's format.**

Files with `.yml` extension are based on a simple format called [YAML](https://en.wikipedia.org/wiki/YAML).

The file `publications.bib` is in [BibTeX](https://en.wikipedia.org/wiki/BibTeX) format. It is easiest if the BibTeX entry for each publication is downloaded directly from the website of the publisher. Almost all of the major publishers have **citation export** links for each publication in different formats including BibTeX. The BibTeX entry should then be placed in `publications.bib`. It is advised that the fields of each new BibTeX entry be carefully checked for errors. Note that you need to add specific non-standard fields to the new BibTeX entries in order to make sure they will be listed under appropriate project (read instructions at the top of `publications.bib`).

Once you are done making your changes, do the following:

- Scroll to the "commit changes" area at the bottom of the page
- Provide a short description of your change(s) in one or both of the textboxes
- Click on the green **commit changes** button to update the file

### Deployment

Once you have edited the file, your changes will be automatically deployed to the website.

## Advanced

This section discusses how to modify the website in a variety of other ways, each of which require additional knowledge.

### Clone from GitHub with Git

All of the files for this website are kept within a *repository*, which you can think of simply as special folder/directory where changes are tracked.
Changes to the repository (e.g., the website) are tracked with Git, a version control system.

GitHub is website that provides hosting for Git repositories.
In other words, you can store you repositories on their remote servers for safekeeping.

In simple cases, you can make changes to a repository directly from their website.
However, to modify the folder structure of a repository or add/remove files, you must modify the repository locally on your computer.
This requires basic knowledge of how Git works, and links to a tutorial video and introductory article can be found on the [resources page]({{site.baseurl}}/resources).

### Make Modifications

With the repository cloned to your local computer, you can make changes any changes you desire to the files within the repository.

**It is recommended that you always pull the latest changes before making your changes (`git pull` command).**

Once you are done making changes, you will need to stage all of your changes (`git add` command) and then commit them (`git commit` command).

Lastly, push your changes to GitHub (`git push` command) so that others can see your changes.

### Build

Once the website has been cloned from GitHub, you will need to build it.

This website uses [Jekyll](http://jekyllrb.com/), which is a software tool for generating static websites from templates and plain text.
Jekyll's templating makes it easier to maintain the website because there is less repeated code.
Another benefit of this is that those without background knowledge of the website's inner workings can make simply changes to the website, e.g., the data files.

If you wish to build the website, you will need to follow the [installation instructions on Jekyll's website](http://jekyllrb.com/docs/installation/).

Assuming you have the website repository cloned and Jekyll installed, do the following to build the website:

- Navigate to the repository directory via the command line
- Run the following command: `bundle exec jekyll build`

Jekyll will generate the static website.

### Deploy

This website is hosted by Missouri S&amp;T.

Before changes are visible on the actual website, the static website generated by Jekyll must be deployed to the school's server.

The `_deploy.rb` script (which requires Ruby and the NetSSH Gem) located in the website's repository will do this for you quickly.

However, it requires that Missouri S&amp;T's IT department has given you permissions to do this.

#### Deployment Automation

The deployment of the website has been automated through a tool called [Buddy](https://buddy.works).
The pipeline for deployment can be modified [here](https://app.buddy.works/sendecomp/sendecomp-website/pipelines).

[1]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/publications.bib
[2]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/members.yml
[3]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/projects.yml
[4]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/labs.yml
[5]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/docs.yml
[6]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/venues.yml
[7]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/awards.yml
