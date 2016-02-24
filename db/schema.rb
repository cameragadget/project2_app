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

ActiveRecord::Schema.define(version: 20160224181208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classifieds", force: :cascade do |t|
    t.string   "post_type"
    t.string   "machine_name"
    t.text     "body_text"
    t.string   "location"
    t.string   "condition"
    t.integer  "price"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "image_one_url_file_name"
    t.string   "image_one_url_content_type"
    t.integer  "image_one_url_file_size"
    t.datetime "image_one_url_updated_at"
    t.string   "image_two_url_file_name"
    t.string   "image_two_url_content_type"
    t.integer  "image_two_url_file_size"
    t.datetime "image_two_url_updated_at"
  end

  add_index "classifieds", ["user_id"], name: "index_classifieds_on_user_id", using: :btree

  create_table "rumors", force: :cascade do |t|
    t.string   "title"
    t.string   "body_text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rumors", ["user_id"], name: "index_rumors_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "initials"
    t.date     "born_on"
    t.string   "email"
    t.string   "machines_owned"
    t.boolean  "admin"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "classifieds", "users"
  add_foreign_key "rumors", "users"
end
