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

ActiveRecord::Schema.define(version: 20160812084953) do

  create_table "bars", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "why"
    t.integer  "numofvisits"
    t.string   "photo"
    t.text     "notes"
    t.integer  "city_id"
    t.boolean  "hide"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_bars_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "relationship"
    t.integer  "numofvisits"
    t.string   "photo"
    t.text     "notes"
    t.integer  "city_id"
    t.boolean  "hide"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["city_id"], name: "index_families_on_city_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "why"
    t.integer  "numofvisits"
    t.string   "photo"
    t.text     "notes"
    t.integer  "city_id"
    t.boolean  "hide"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_movies_on_city_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "why"
    t.integer  "numofvisits"
    t.string   "photo"
    t.text     "notes"
    t.integer  "city_id"
    t.boolean  "hide"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_parks_on_city_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "why"
    t.integer  "numofvisits"
    t.string   "photo"
    t.text     "notes"
    t.integer  "city_id"
    t.boolean  "hide"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_restaurants_on_city_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "why"
    t.integer  "numofvisits"
    t.string   "photo"
    t.text     "notes"
    t.integer  "city_id"
    t.boolean  "hide"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_sports_on_city_id"
  end

  create_table "travels", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "why"
    t.integer  "numofvisits"
    t.string   "photo"
    t.text     "notes"
    t.integer  "city_id"
    t.boolean  "hide"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_travels_on_city_id"
  end

end
