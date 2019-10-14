class CreateDevelopments < ActiveRecord::Migration[6.0]
  def change
    create_table :developments do |t|
      t.integer :hdi_rank
      t.string :country
      t.float :human_development_index
      t.float :life_expectancy_at_birth
      t.float :expected_education_years
      t.float :mean_education
      t.float :gni_capita
      t.integer :gni_capita_minus_hdi_rank
      t.integer :gii_rank
      t.float :giiindex
      t.references :freedom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
