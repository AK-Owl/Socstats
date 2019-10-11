class CreateDevelopmentByRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :development_by_regions do |t|
      t.integer :hdindex
      t.string :region
      t.float :human_development_index
      t.float :life_expectancy_at_birth
      t.float :expected_education_years
      t.float :mean_education
      t.float :gni_capita
      t.integer :giiindex

      t.timestamps
    end
  end
end
