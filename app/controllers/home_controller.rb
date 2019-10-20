#require 'guardian-content'
require 'httparty'
#require 'unirest'
class HomeController < ApplicationController

  def index
    @response = HTTParty.get('https://content.guardianapis.com/search?show-fields=bodyText&q=human%20AND%20(development%20OR%20freedom)&from-date=2014-01-01&api-key=test')

  end
end
