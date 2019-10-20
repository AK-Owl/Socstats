class HomeController < ApplicationController
  def index
    # downlaod tabular data schema to JSON file
    rows = []
    CSV.foreach('lib/assets/human_development_country.csv', headers: true, converters: :all) do |row|
        rows << row.to_hash
    end
    json = rows.to_json
    fJson = File.open("tmp/temp.json","w")
    fJson.write(json)
    fJson.close
    @save1 = send_file("#{Rails.root}/tmp/temp.json", type: "application/json", )
    
  end
end
