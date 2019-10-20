
# SocStats Web App

![](readme_screenshots/landing.png)

## ABOUT THE PROJECT:

*SocStats project was developed by Spices team as a part of MSc Information Technology course as a scope of a bigger project in order to demonstrate team skills, technology and its potential implementation. The idea was inspired by the datasets found in Kaggle: to gather global statistics and relevant data on sociology (like Human Development Index, Human Freedom Index, etc.) in one place, where it will be regularly updated from its sources and provide the users with free data visualization and analytical tools with options to download the selected results.*


## TARGET USERS:
The project was designed for researchers, students, analysts, human rights activists and any interested parties to ease the search and analysis processes, leaving people more time for action.

### Top-level User stories:
*	A User should be able to access the web app from different devices via the link: https//fathomless-chamber 89094.herokuapp.com/ 
*	A User should be able to navigate easily through responsive menu and analytical tools.
*	A User should be able to access open source and live data displayed on the website.
*	A User should be able to download the data available.
*	A User should be able to select data attributes and display the analysis results.

## Ruby version

"ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]"

"Rails 6.0.0"

**System dependencies:**

*file: package.json. Node dependencies:*


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

*file: Gemfile. Node dependencies:*

Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
>gem 'rails', '~> 6.0.0'

Use Puma as the app server
>gem 'puma', '~> 3.11'

Use SCSS for stylesheets
>gem 'sass-rails', '~> 5'

Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
>gem 'webpacker', '~> 4.0'

Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
>gem 'turbolinks', '~> 5'

Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
>gem 'jbuilder', '~> 2.7'

This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application.
>gem 'jquery-rails', '~> 4.3', '>= 4.3.5'

Windows does not include zoneinfo files, so bundle the tzinfo-data gem
>gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

A Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
>gem 'bootstrap-sass'

Gem that includes Highcharts (Interactive JavaScript charts for your web projects)
>gem 'highcharts-rails', '~> 6.0', '>= 6.0.3'

Gem for consuming restful web services dead easy
>gem 'httparty', '~> 0.17.1'

The CSV library provides a complete interface to CSV files and data. I
>gem 'csv', '~> 0.0.1'

Reduces boot times through caching; required in config/boot.rb
>gem 'bootsnap', '>= 1.4.2', require: false

**Gems that did not work out:**

Unirest is a set of lightweight HTTP libraries available in multiple languages.
>gem 'unirest', '~> 1.1', '>= 1.1.2'

A library for the Guardian Content API
>gem 'guardian-content'


## Installation & Configuration


1. Clone, Fork or download the code package from the master branch https://github.com/AliceOwl/Socstats.git
2. Install Ruby, Rails and gems mentioned above. You might also need to install Bundle, NPM, Yarn and Nokogiri.
3. In the code directory run the folllowing commands:

```yarn install --check-files```

bundle update

**for database initialisation & configuration**

rake db:migrate

rake developmentbyregion:seed_developmentbyregion

rake freedom:seed_freedom

rake development:seed_development

**supporting gems for application:**

gem install highcharts-rails 

npm install bootstrap@3

yarn add highcharts 

yarn add jquery 

gem install amcharts-js -v 0.1.0

sudo apt-get install libpq-dev or sudo apt-get install postgresql

## Deployment instructions

To run on the local/Development environment: _rails server_ or _rails s_ from the project directory

## Production Deployment: Heroku

_follow the instructions on the link below:_
https://devcenter.heroku.com/articles/getting-started-with-rails5

_in database.yml change production database adapter from sqlite3 to postgresql as mentioned in the file_

**attach screennshot here**





#sass syntax@import for optimization of website performance by compiling the CSS into one file that is served to the browser.

"CSS has an import option that lets you split your CSS into smaller, more maintainable portions. The only drawback is that each time you use @import in CSS it creates another HTTP request. Sass builds on top of the current CSS @import but instead of requiring an HTTP request, Sass will take the file that you want to import and combine it with the file you're importing into so you can serve a single CSS file to the web browser."
from https://sass-lang.com/guide

#app/assets/javascripts/application.js (in our case, app/javascript/packs/application.js):
//= require jquery3
//= require bootstrap


bundle

rails generate controller grayscale index
