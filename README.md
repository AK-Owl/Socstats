# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

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
