# Gemfile
source 'https://rubygems.org'
ruby '2.6.9'

# Rails 4.2 plus pins compatible with Ruby 2.6
gem 'rails', '4.2.11.3'

# DB per assignment
gem 'sqlite3', '~> 1.3.0'

# Critical pins preventing the "nokogiri requires Ruby >= 3.1" cascade
gem 'nokogiri', '1.13.10'            # last nokogiri that supports Ruby 2.6
gem 'rails-dom-testing', '~> 1.0.9'  # avoids newer versions pulling nokogiri >= 1.15.7
gem 'rails-html-sanitizer', '~> 1.4.4'
gem 'loofah', '~> 2.19.1'

# Rails 4 era deps that sometimes float too new on modern rubygems
gem 'i18n', '~> 0.9.5'
gem 'tzinfo', '~> 1.2'
gem 'rack', '~> 1.6'                 # Rails 4.2 expects rack 1.6.x
gem 'sprockets', '~> 3.7'

# You already installed bundler 1.17.3; keep it explicit
gem 'bundler', '1.17.3'
gem 'jquery-rails', '~> 4.4'