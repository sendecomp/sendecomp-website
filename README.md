---
layout: toc
title: Editing the SeNDeComp Website
---

# {{ page.title }}

## Simple

This section contains step-by-step instructions for making modifications to the dynamically generated content of this website.
Data on group members, publications, research areas, and awards is all stored in text files.
These text files are then parsed to generate the web pages you see.

### Get Permissions

The easiest way to modify the text files is via Github, a website we use to track changes to publications and code.
However, you will need to be granted access, which requires the following:

1. [Make a Github account](https://www.github.com/join)
2. Request owner permissions to SeNDeComp Github Group by contacting an existing group member
    - Provide them with your *Github username*
3. Check your email and accept the group invitation

If you've already done the things above, go to step 2.

### Make Modifications

The next step is to actually make your desired changes.
The type of change you want to make will determine the file you need to edit.
The table below tries to direct you to the proper file.

| What You Want to Modify | File Name Convention | Links |
| :--- | :--- | :--- |
| Publications | `publications.yml` | [publications.yml][1] |
| Members | `members.yml` | [members.yml][2] |
| Critical Infrastructure Area | `cip-*.yml` | [cip-docs.yml][3] <br/> [cip-labs.yml][4] <br/> [cip-projects.yml][5] <br/> [cip-venues.yml][6] |
| Personalized Learning Area | `per-*.yml` | [per-docs.yml][7] <br/> [per-labs.yml][8], <br/> [per-projects.yml][9] <br/> [per-venues.yml][10] |
| Awards | `awards-*.yml` | [awards-best-paper.yml][11] <br/> [awards-grad.yml][12] <br/> [awards-travel.yml][13] <br/> [awards-undergrad.yml][14] |
{:.table .table-condensed}

Once you know which you want to modify, click on its appropriate link above to go its Github page.
Next, assuming you are logged in to Github, click on the pencil icon in the upper righthand corner of the text file content window.

![Github Edit File Button Location]({{ site.baseurl }}/img/edit-yml-figure-1.png){:.img-responsive .img-thumbnail width="600px"}

This will take you to a page where you can edit the file's contents directly in the browser.
Once you are done, click on the green **commit changes** button at the bottom of the page.

[1]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/publications.yml
[2]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/members.yml
[3]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/cip-docs.yml
[4]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/cip-labs.yml
[5]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/cip-projects.yml
[6]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/cip-venues.yml
[7]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/per-docs.yml
[8]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/per-labs.yml
[9]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/per-projects.yml
[10]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/per-venues.yml
[11]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/awards-best-paper.yml
[12]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/awards-grad.yml
[13]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/awards-travel.yml
[14]: https://github.com/sendecomp/sendecomp-website/blob/master/_data/awards-undergrad.yml

### Request Deployment

Once you have edited the file, you may notice that your changes are not automatically reflected on the website.
For this to happen, you will need to do one of the following things:

- Request that a member of the team deploy the website with your changes.
- Deploy them yourself by reviewing the Advanced section below.

## Advanced

This section discusses how to modify the website in a variety of other ways, each of which require additional knowledge.

### Clone from Github with Git

All of the files for this website are kept within a *repository*, which you can think of simply as special folder/directory where changes are tracked.
Changes to the repository (e.g., the website) are tracked with Git, a version control system.

Github is website that provides hosting for Git repositories.
In other words, you can store you repositories on their remote servers for safekeeping.

In simple cases, you can make changes to a repository directly from their website.
However, to modify the folder structure of a repository or add/remove files, you must modify the repository locally on your computer.
This requires basic knowledge of how Git works, and links to a tutorial video and introductory article can be found on the [resources page]({{site.baseurl}}/resources).

### Build

Once the website has been cloned from Github, you will need to build it.

This website uses [Jekyll](http://jekyllrb.com/), which is a software tool for generating static websites from templates and plain text.
Jekyll's templating makes it easier to maintain the website because there is less repeated code.
Another benefit of this is that those without background knowledge of the website's innerworkings can make simply changes to the website, e.g., the data files.

If you wish to build the website, you will need to follow the [installation instructions on Jekyll's website](http://jekyllrb.com/docs/installation/).

Assuming you have the website repository cloned and Jekyll installed, do the following to build the website:

- Navigate to the repository directory via the command line
- Run the following command: `jekyll build`

Jekyll will generate the static website

### Deploy

This website is hosted by Missouri S&amp;T.
Before changes are visible on the actual website, the static website generated by Jekyll must be deployed to the school's server.
The `_deploy.rb` script (which requires Ruby and the NetSSH Gem) located in the website's repository will do this for you quickly.
However, it requires that Missouri S&amp;T's IT department has given you permissions to do this.

### Make Modifications

With the repository cloned to your local computer, you can make changes any changes you desire to the files within the repository.
**It is recommended that you always pull the latest changes before making your changes.**
Once you are done making changes, you will need to stage all of your changes (`git add` command) and then commit them (`git commit` command).
Lastly, push your changes to Github (`git push` command) so that others can see your changes.
