require 'csv'
namespace :developmentbyregion do
  desc "pull Human Development index by region index data into database"
  task seed_developmentbyregion: :environment do
    #drops the previous data when we import new data
    Developmentbyregion.destroy_all

    CSV.foreach("lib/assets/human_development_region.csv", :headers => true) do |row|
      puts row.inspect
           Developmentbyregion.create!(
            hdindex: row[0].to_i,
            region: row[1],
            human_development_index: row[2].to_f,
            life_expectancy_at_birth: row[3].to_f,
            expected_education_years: row[4].to_f,
            mean_education: row[5].to_f,
            gni_capita: row[6].to_f,
            giiindex: row[7].to_f,
          )
      end
  end
end