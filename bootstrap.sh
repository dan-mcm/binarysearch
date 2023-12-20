#!/bin/bash

# Install Bundler
gem install bundler

# Create Gemfile
echo -e "source 'https://rubygems.org'\n\ngem 'minitest'" > Gemfile

# Install dependencies
bundle install

# Run tests
bundle exec ruby -Ilib -v test/binary_search_test.rb