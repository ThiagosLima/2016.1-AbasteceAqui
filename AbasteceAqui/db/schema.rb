# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160622022604) do

  create_table "counties", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "counties", ["name"], name: "index_counties_on_name"
  add_index "counties", ["state_id"], name: "index_counties_on_state_id"

  create_table "fuel_researches", force: :cascade do |t|
    t.date     "date"
    t.integer  "county_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fuel_researches", ["county_id"], name: "index_fuel_researches_on_county_id"

  create_table "fuel_types", force: :cascade do |t|
    t.string   "type_name"
    t.string   "unit_of_measurement"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "fuels", force: :cascade do |t|
    t.integer  "number_of_gas_station"
    t.float    "min_resale_price"
    t.float    "medium_resale_price"
    t.float    "max_resale_price"
    t.float    "resale_standard_deviation"
    t.float    "min_distribuition_price"
    t.float    "medium_distribuition_price"
    t.float    "max_distribuition_price"
    t.float    "distribuition_standard_deviation"
    t.integer  "fuel_research_id"
    t.integer  "fuel_type_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "fuels", ["fuel_research_id"], name: "index_fuels_on_fuel_research_id"
  add_index "fuels", ["fuel_type_id"], name: "index_fuels_on_fuel_type_id"
  add_index "fuels", ["medium_resale_price"], name: "index_fuels_on_medium_resale_price"

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "states", ["region_id"], name: "index_states_on_region_id"

end
