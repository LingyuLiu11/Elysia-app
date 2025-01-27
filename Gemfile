source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# A Ruby client that tries to match Redis' API one-to-one, while still providing an idiomatic interface.
gem 'redis', '~> 4.5', '>= 4.5.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false
# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.8'
# A library for bulk inserting data using ActiveRecord.
gem 'activerecord-import', '~> 1.2'
# Kaminari is a Scope & Engine based, clean, powerful, agnostic, customizable and sophisticated paginator for Rails 4+
gem 'kaminari', '~> 1.2', '>= 1.2.1'
# Slim is a template language whose goal is reduce the syntax to the essential parts without becoming cryptic.
gem 'slim', '~> 4.1'
# Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends.
gem 'carrierwave', '~> 2.2', '>= 2.2.2'
# bootstrap-sass is a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
# will_paginate provides a simple API for performing paginated queries with Active Record, DataMapper and Sequel, and includes helpers for rendering pagination links in Rails, Sinatra, Hanami, and Merb web apps.
gem 'will_paginate', '~> 3.3', '>= 3.3.1'
# font-awesome-rails provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline.
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.7'
# A library to read/write files/spreadsheets in Google Drive/Docs.
gem 'google_drive', '~> 3.0', '>= 3.0.7'
# Build reactive applications with the Rails tooling you already know and love.
gem 'stimulus_reflex', '~> 3.4', '>= 3.4.1'

gem 'react-rails'

gem 'mailboxer', github: 'mailboxer/mailboxer'
# This is a ruby wrapper for the Google Maps api
gem 'google-maps', '~> 3.0', '>= 3.0.6'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc.
  gem 'faker', '~> 2.19'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
