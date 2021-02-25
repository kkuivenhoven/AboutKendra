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

ActiveRecord::Schema.define(version: 20210224205632) do

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "platform_type"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "github_repo"
    t.string   "prod_site"
    t.integer  "year"
    t.integer  "month"
    t.boolean  "still_active"
  end

  create_table "teches", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "ruby_on_rails"
    t.boolean  "ruby"
    t.boolean  "pearson_dictionary_api"
    t.boolean  "oxford_dictionary_api"
    t.boolean  "zing_charts_api"
    t.boolean  "javascript"
    t.boolean  "r_spec"
    t.boolean  "json"
    t.boolean  "csv"
    t.boolean  "bootstrap"
    t.boolean  "html"
    t.boolean  "css"
    t.boolean  "scss"
    t.boolean  "google_maps_api"
    t.boolean  "d3_js_api"
    t.boolean  "bible_gateway_api"
    t.boolean  "react_native"
    t.boolean  "firebase"
    t.boolean  "c_plus_plus"
    t.boolean  "qt_creator"
  end

end
