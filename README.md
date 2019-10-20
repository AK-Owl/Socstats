# README

# SocStats Web App

![](readme_screenshots/landing.png)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]

Rails 6.0.0

* System dependencies:

file: package.json. Node dependencies: 

  "@amcharts/amcharts4": "^4.7.3",
    "@amcharts/amcharts4-geodata": "^4.1.7",
    "@fortawesome/fontawesome-free": "5.10.2",
    "@rails/actioncable": "^6.0.0-alpha",
    "@rails/activestorage": "^6.0.0-alpha",
    "@rails/ujs": "^6.0.0-alpha",
    "@rails/webpacker": "^4.0.7",
    "bootstrap": "^3.4.1",
    "highcharts": "^7.2.0",
    "jquery": "^3.4.1",
    "jquery.easing": "^1.4.1",
    "leaflet": "^1.5.1",
    "turbolinks": "^5.2.0"

file: Gemfile. Node dependencies:

ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]

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

# Gem for consuming restful web services dead easy
gem 'httparty', '~> 0.17.1'






* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

10.10.2019:
npm install bootstrap@3

Gemfile:
# This gem provides:
#jQuery 1, 2 and 3
#the jQuery UJS adapter
#assert_select_jquery to test jQuery responses in Ruby tests
gem 'jquery-rails'

# a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
gem 'bootstrap-sass'

#app/assets/stylesheets/application.css to /application.css.scss:

@import "bootstrap-sprockets";
@import "bootstrap";

#sass syntax@import for optimization of website performance by compiling the CSS into one file that is served to the browser.

"CSS has an import option that lets you split your CSS into smaller, more maintainable portions. The only drawback is that each time you use @import in CSS it creates another HTTP request. Sass builds on top of the current CSS @import but instead of requiring an HTTP request, Sass will take the file that you want to import and combine it with the file you're importing into so you can serve a single CSS file to the web browser."
from https://sass-lang.com/guide

#app/assets/javascripts/application.js (in our case, app/javascript/packs/application.js):
//= require jquery3
//= require bootstrap


bundle

rails generate controller grayscale index
