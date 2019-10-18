require 'csv'
namespace :development do
  desc "pull Human Development index data into database"
  task seed_development: :environment do
    #drops the previous data when we import new data
    Development.destroy_all

    CSV.foreach("lib/assets/human_development_country.csv", :headers => true) do |row|
      puts row.inspect
      freedoms = Freedom.all
      freedoms.each do |index|
        if index.country == row[1]
          Development.create!(
            hdi_rank: row[0].to_i,
            country: row[1],
            human_development_index: row[2].to_f,
            life_expectancy_at_birth: row[3].to_f,
            expected_education_years: row[4].to_f,
            mean_education: row[5].to_f,
            gni_capita: row[6].to_f,
            gni_capita_minus_hdi_rank: row[7].to_i,
            gii_rank: row[8].to_i,
            giiindex: row[9].to_f,
            freedom_id: index.id
          )
        else
          next
        end
      end
    end
  end
end
