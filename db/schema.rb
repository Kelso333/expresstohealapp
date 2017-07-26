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

ActiveRecord::Schema.define(version: 20170725221758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "person_id"
    t.bigint "obstacle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["obstacle_id"], name: "index_comments_on_obstacle_id"
    t.index ["person_id"], name: "index_comments_on_person_id"
  end

  create_table "obstacles", force: :cascade do |t|
    t.text "obstacle_content"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_id"
    t.index ["person_id"], name: "index_obstacles_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "obstacles"
  add_foreign_key "comments", "people"
  add_foreign_key "obstacles", "people"
end
