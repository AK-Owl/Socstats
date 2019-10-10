class CreateFreedoms < ActiveRecord::Migration[6.0]
  def change
    create_table :freedoms do |t|
      t.string :country
      t.string :ISO_code
      t.string :region
      t.integer :year
      t.float :pf_rol
      t.float :pf_ss
      t.float :pf_movement
      t.float :pf_religion
      t.float :pf_association
      t.float :pf_expression
      t.float :pf_identity
      t.float :ef_government
      t.float :ef_legal
      t.float :ef_money
      t.float :ef_trade
      t.float :ef_regulation
      t.float :pf_score
      t.integer :pf_rank
      t.float :ef_score
      t.integer :ef_rank
      t.integer :hf_score
      t.integer :hf_rank
      t.integer :hf_quartile

      t.timestamps
    end
  end
end
