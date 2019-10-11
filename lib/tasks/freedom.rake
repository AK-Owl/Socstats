require 'csv'
namespace :freedom do
  desc "pull human freeeom index data into database"
  task seed_freedom: :environment do
    #drops the previous data when we import new data
    Freedom.destroy_all

    CSV.foreach("lib/assets/human_freedom_index_2015.csv", :headers => true) do |row|
      puts row.inspect

      Freedom.create!(
        country: row[0],
        ISO_code: row[1],
        region: row[2],
        year: row[3].to_i,
        pf_rol: row[4].to_f,
        pf_ss: row[5].to_f,
        pf_movement: row[6].to_f,
        pf_religion: row[7].to_f,
        pf_association: row[8].to_f,
        pf_expression: row[9].to_f,
        pf_identity: row[10].to_f,
        ef_government: row[11].to_f,
        ef_legal: row[12].to_f,
        ef_money: row[13].to_f,
        ef_trade: row[14].to_f,
        ef_regulation: row[15].to_f,
        pf_score: row[16].to_f,
        pf_rank: row[17].to_i,
        ef_score: row[18].to_f,
        ef_rank: row[19].to_i,
        hf_score: row[20].to_i,
        hf_rank: row[21].to_i,
        hf_quartile: row[22].to_i
      )
    end
  end
end
