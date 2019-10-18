# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_11_084556) do

  create_table "developmentbyregions", force: :cascade do |t|
    t.integer "hdindex"
    t.string "region"
    t.float "human_development_index"
    t.float "life_expectancy_at_birth"
    t.float "expected_education_years"
    t.float "mean_education"
    t.float "gni_capita"
    t.float "giiindex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "developments", force: :cascade do |t|
    t.integer "hdi_rank"
    t.string "country"
    t.float "human_development_index"
    t.float "life_expectancy_at_birth"
    t.float "expected_education_years"
    t.float "mean_education"
    t.float "gni_capita"
    t.integer "gni_capita_minus_hdi_rank"
    t.integer "gii_rank"
    t.float "giiindex"
    t.integer "freedom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["freedom_id"], name: "index_developments_on_freedom_id"
  end

  create_table "freedoms", force: :cascade do |t|
    t.string "country"
    t.string "ISO_code"
    t.string "region"
    t.integer "year"
    t.float "pf_rol"
    t.float "pf_ss"
    t.float "pf_movement"
    t.float "pf_religion"
    t.float "pf_association"
    t.float "pf_expression"
    t.float "pf_identity"
    t.float "ef_government"
    t.float "ef_legal"
    t.float "ef_money"
    t.float "ef_trade"
    t.float "ef_regulation"
    t.float "pf_score"
    t.integer "pf_rank"
    t.float "ef_score"
    t.integer "ef_rank"
    t.integer "hf_score"
    t.integer "hf_rank"
    t.integer "hf_quartile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "developments", "freedoms"
end
