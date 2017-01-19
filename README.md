# SeNDeComp Website

Welcome to the SeNDeComp website repository.

Here you will find the source code for [http://web.mst.edu/~sendecomp/](http://web.mst.edu/~sendecomp/).

If you'd like to know how to edit the website, please go [here](http://web.mst.edu/~sendecomp/edit).

## How to Build

This website uses a static website generator called Jekyll.

1. Clone the repository to somewhere on your local machine and navigate to it in a terminal.
2. Just select your platform and read/do the *Requirements* section.  The simplest and most comprehensive guide for this is probably Github's [here][1].
3. Use Bundler to install all of the necessary Ruby gems on which the website depends.  Do the following:
  1. `bundle config build.nokogiri --use-system-libraries`
  2. `sudo bundle install`
4. Build and serve the website locally to view it in the browser: `bundle exec jekyll serve`.

To update the actual SeNDeComp website, run the `_deploy.rb` script in the root of the repository using `ruby _deploy.rb`.
*You will need folder permissions granted to you by IT at the request of the network drive owner.*

[1]: https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#platform-mac
