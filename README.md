# SeNDeComp Website

Welcome to the SeNDeComp website repository.

Here you will find the source code for [http://web.mst.edu/~sendecomp/](http://web.mst.edu/~sendecomp/).

If you'd like to know how to edit the website, please go [here](http://web.mst.edu/~sendecomp/edit).

## How to Build

This website uses a static website generator called [Jekyll](https://jekyllrb.com/).

### Automatic

The website is automatically built and deployed using a continuous integration tool called [BuddyWorks](https://buddy.works/) whenever a new push is performed (or files are updated directly on GitHub).

Below is an indicator of the status of compilation and deployment on BuddyWorks.

[![buddy pipeline](https://app.buddy.works/sedighs/sendecomp-website/pipelines/pipeline/54590/badge.svg?token=f5c144ccda9b6bded78619b4ed19b3b8ac00da4a253e63e0f9e7d0a4bf18c5ad "buddy pipeline")](https://app.buddy.works/sedighs/sendecomp-website/pipelines/pipeline/54590)

### Manual

1. Clone the repository to somewhere on your local machine and navigate to it in a terminal.
2. Just select your platform and read/do the *Requirements* section.  The simplest and most comprehensive guide for this is probably Github's [here][1].
3. Use Bundler to install all of the necessary Ruby gems on which the website depends.  Do the following:
  1. `bundle config build.nokogiri --use-system-libraries`
  2. `bundle install`
4. Build and serve the website locally to view it in the browser: `bundle exec jekyll serve`.

To update the actual SeNDeComp website, run the `_deploy.rb` script in the root of the repository using `ruby _deploy.rb`.
*You will need folder permissions granted to you by IT at the request of the network drive owner.*

[1]: https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#platform-mac
