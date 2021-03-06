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

ActiveRecord::Schema.define(version: 2019_08_21_102501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "eyes"
    t.string "height"
    t.string "skin"
    t.string "weight"
    t.string "alignment"
    t.string "background"
    t.text "background_feature"
    t.text "bonds"
    t.string "deity"
    t.text "flaws"
    t.text "ideals"
    t.text "personality_traits"
    t.string "char_class"
    t.string "gender"
    t.string "race"
    t.integer "STR"
    t.integer "DEX"
    t.integer "CON"
    t.integer "INT"
    t.integer "WIS"
    t.integer "CHA"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_url"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "users"
end
