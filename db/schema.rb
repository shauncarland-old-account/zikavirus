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

ActiveRecord::Schema.define(version: 20160402221839) do

  create_table "data_sources", force: :cascade do |t|
    t.string   "source_name"
    t.string   "source_description"
    t.string   "source_publisher"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "location_name"
    t.string   "location_type"
    t.string   "country"
    t.string   "state_province"
    t.string   "district_county_municipality"
    t.string   "city"
    t.string   "alt_name1"
    t.string   "alt_name2"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "zika_data_fields", force: :cascade do |t|
    t.string   "data_field_code",        null: false
    t.string   "data_field_name"
    t.string   "data_field_description"
    t.string   "data_field_unit"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "zikas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
