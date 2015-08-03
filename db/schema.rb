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

ActiveRecord::Schema.define(version: 20150803214750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string  "name"
    t.text    "about_me"
    t.text    "pic_url"
    t.integer "time_bank"
  end

  create_table "services", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.integer "profile_id"
    t.integer "price"
  end

  add_index "services", ["profile_id"], name: "index_services_on_profile_id", using: :btree

  add_foreign_key "services", "profiles"
end