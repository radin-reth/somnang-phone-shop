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

ActiveRecord::Schema.define(version: 20151107031333) do

  create_table "about_us", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accessories", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.text     "description"
    t.text     "features"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accessories_phones", id: false, force: true do |t|
    t.integer  "accessory_id"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accessories_phones", ["accessory_id"], name: "index_accessories_phones_on_accessory_id"
  add_index "accessories_phones", ["phone_id"], name: "index_accessories_phones_on_phone_id"

  create_table "albums", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums_photos", force: true do |t|
    t.integer  "album_id"
    t.integer  "photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums_photos", ["album_id"], name: "index_albums_photos_on_album_id"
  add_index "albums_photos", ["photo_id"], name: "index_albums_photos_on_photo_id"

  create_table "brands", force: true do |t|
    t.string   "name"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communications", force: true do |t|
    t.text     "address"
    t.string   "tel"
    t.string   "email"
    t.text     "business_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "accessory_id"
    t.integer  "profile_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "brand_id"
    t.string   "name"
    t.float    "price"
    t.integer  "status"
    t.string   "tag_line"
    t.text     "description"
    t.boolean  "availability"
    t.boolean  "promotion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "phones", ["brand_id"], name: "index_phones_on_brand_id"

  create_table "photos", force: true do |t|
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "about_us_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "email"
    t.string   "phone_number"
    t.text     "description"
    t.text     "recommend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specifications", force: true do |t|
    t.string   "model"
    t.string   "memory"
    t.string   "storage"
    t.string   "camera"
    t.string   "processor"
    t.string   "battery"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
