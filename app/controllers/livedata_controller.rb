
class LivedataController < ApplicationController
  def index
    # Searching The Guardian API with the following link
    response = HTTParty.get('https://content.guardianapis.com/search?show-fields=bodyText&q=human%20AND%20(development%20OR%20freedom)&from-date=2014-01-01&api-key=4f724b82-90ef-4d6d-8ec5-054543388de5')
    # Guardian API KEY = 4f724b82-90ef-4d6d-8ec5-054543388de5
   
    # convert the result into JSON object
    @result = JSON.parse(response.body)
    
    # fetching each Json object
    @result["response"]["results"].each do |data|
      @title = data["id"]
      @webtitle = data["webTitle"]
      @weburl = data["webUrl"]
      @bobytext = data["fields"]["bodyText"]  
    end
  end
end


