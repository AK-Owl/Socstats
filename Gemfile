source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application.
gem 'jquery-rails', '~> 4.3', '>= 4.3.5'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
gem 'bootstrap-sass'
# Gem that includes Highcharts (Interactive JavaScript charts for your web projects)
gem 'highcharts-rails', '~> 6.0', '>= 6.0.3'
#Gem for consuming restful web services dead easy
gem 'httparty', '~> 0.17.1'
#A library for the Guardian Content AP
#gem 'guardian-content', '~> 0.2.2'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

#he CSV library provides a complete interface to CSV files and data. I
gem 'csv', '~> 0.0.1'

gem 'sprockets-rails', require: 'sprockets/railtie'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.4'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

group :production do
  # Pg is the Ruby interface to the {PostgreSQL RDBMS}
  gem 'pg', '~> 1.1', '>= 1.1.4'
end

