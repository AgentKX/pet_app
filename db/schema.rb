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

ActiveRecord::Schema.define(version: 20160410211337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adopter_users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "phone_number"
    t.string   "gender"
    t.boolean  "has_yard"
    t.boolean  "has_kids"
    t.boolean  "employed"
    t.boolean  "retired"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "gender"
    t.string   "breed"
    t.string   "weight"
    t.string   "color"
    t.string   "age"
    t.text     "description"
    t.boolean  "special_needs"
    t.integer  "energy_level"
    t.boolean  "needs_yard"
    t.boolean  "kids_ok"
    t.decimal  "fees",          precision: 5, scale: 2
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "shelter_users", force: :cascade do |t|
    t.string   "shelter_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "phone_number"
    t.string   "pet_name"
    t.string   "gender"
    t.string   "breed"
    t.integer  "weight"
    t.string   "color"
    t.string   "age"
    t.text     "description"
    t.boolean  "special_needs"
    t.integer  "energy_level"
    t.boolean  "needs_yard"
    t.boolean  "kids_ok"
    t.decimal  "fees",          precision: 4, scale: 2
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end
