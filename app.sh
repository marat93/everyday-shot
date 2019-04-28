#!/usr/bin/env bash

PATH=/usr/local/bin:/usr/bin:/bin

# load rvm ruby
source /Users/maradona/.rvm/environments/ruby-2.6.0

zsh
cd /Users/maradona/Projects/everyday-shot
bundle install
ruby /Users/maradona/Projects/everyday-shot/app.rb
