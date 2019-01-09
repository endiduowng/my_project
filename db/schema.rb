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

ActiveRecord::Schema.define(version: 20190109051345) do

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_comments_on_room_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "thumb_url", limit: 200
    t.string "url", limit: 200
    t.string "room_id", limit: 45
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_likes_on_room_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "url"
    t.string "title", limit: 200
    t.string "category", limit: 100
    t.string "province", limit: 45
    t.string "district", limit: 45
    t.string "ward", limit: 45
    t.string "street", limit: 45
    t.string "project_name", limit: 100
    t.string "project_investor", limit: 100
    t.string "project_size", limit: 200
    t.string "address", limit: 200
    t.float "area", limit: 24
    t.float "price", limit: 24
    t.integer "price_unit", limit: 1
    t.text "description", collation: "utf8mb4_general_ci"
    t.float "front", limit: 24
    t.float "entrance", limit: 24
    t.string "house_direction", limit: 45
    t.integer "number_floor"
    t.integer "number_toilet"
    t.integer "number_bedroom"
    t.text "interior"
    t.string "seller_name", limit: 100
    t.string "seller_address"
    t.string "seller_phone", limit: 15
    t.string "seller_mobile_phone", limit: 15
    t.string "seller_email", limit: 45
    t.string "media", limit: 45
    t.string "post_type", limit: 45
    t.string "post_code", limit: 45
    t.date "begin_date"
    t.date "expired_date"
    t.integer "delete_status", limit: 1, default: 0
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.float "latitude", limit: 24
    t.float "longitude", limit: 24
    t.index ["id"], name: "id_UNIQUE", unique: true
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "rooms"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "rooms"
  add_foreign_key "likes", "users"
end
