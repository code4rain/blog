#! /usr/bin/env bash

# install curl
sudo apt-get install curl

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
# install rvm
\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm requirements

rvm install 2.3.1

rvm use 2.3.1 --default

sudo apt-get install nodejs
# install jekyll
gem install jekyll

# install octopress
gem install octopress

# install plugin
gem install jekyll-gist
gem install jekyll-paginate
gem install jekyll-sitemap
