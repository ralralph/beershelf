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

ActiveRecord::Schema.define(version: 2019_10_22_123324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beer_categories", force: :cascade do |t|
    t.bigint "beer_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beer_categories_on_beer_id"
    t.index ["category_id"], name: "index_beer_categories_on_category_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.integer "volume"
    t.string "detail"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "image"
    t.string "detail"
    t.bigint "beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_breweries_on_beer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.string "photo"
    t.bigint "user_id"
    t.bigint "beer_id"
    t.bigint "record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_posts_on_beer_id"
    t.index ["record_id"], name: "index_posts_on_record_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "records", force: :cascade do |t|
    t.integer "feeling", null: false
    t.integer "serving_style", null: false
    t.string "location"
    t.bigint "tast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tast_id"], name: "index_records_on_tast_id"
  end

  create_table "tasts", force: :cascade do |t|
    t.integer "bitterness", default: 3, null: false
    t.integer "sweetness", default: 3, null: false
    t.integer "sourness", default: 3, null: false
    t.integer "flavor", default: 3, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "icon", default: "no_image"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.boolean "complete"
    t.bigint "user_id"
    t.bigint "beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_wishlists_on_beer_id"
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

  add_foreign_key "beer_categories", "beers"
  add_foreign_key "beer_categories", "categories"
  add_foreign_key "breweries", "beers"
  add_foreign_key "posts", "beers"
  add_foreign_key "posts", "records"
  add_foreign_key "posts", "users"
  add_foreign_key "records", "tasts"
  add_foreign_key "wishlists", "beers"
  add_foreign_key "wishlists", "users"
end
