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

ActiveRecord::Schema.define(version: 2019_05_04_143707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_categories", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.text "text", null: false
    t.string "source", null: false
    t.boolean "published", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_categories", force: :cascade do |t|
    t.bigint "article_id"
    t.bigint "article_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_category_id"], name: "index_articles_categories_on_article_category_id"
    t.index ["article_id"], name: "index_articles_categories_on_article_id"
  end

  create_table "chains", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "complexity_id"
  end

  create_table "complexities", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_categories", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_types", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.text "source", null: false
    t.integer "caloric", null: false
    t.float "weight", null: false
    t.float "volume", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "food_type_id", null: false
    t.bigint "food_category_id", null: false
    t.bigint "producer_id", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "title", null: false
    t.float "weight", null: false
    t.float "volume", null: false
    t.text "description", null: false
    t.string "source", null: false
    t.boolean "individualy", default: true, null: false
    t.bigint "object_category_id", null: false
    t.bigint "object_importance_id", null: false
    t.bigint "season_id", null: false
    t.bigint "producer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_weather_types", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "weather_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_items_weather_types_on_item_id"
    t.index ["weather_type_id"], name: "index_items_weather_types_on_weather_type_id"
  end

  create_table "object_categories", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "object_importances", force: :cascade do |t|
    t.string "title", null: false
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physical_conditions", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_places", force: :cascade do |t|
    t.bigint "route_id"
    t.bigint "settlement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_route_places_on_route_id"
    t.index ["settlement_id"], name: "index_route_places_on_settlement_id"
  end

  create_table "route_statuses", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.integer "duration", null: false
    t.bigint "chain_id", null: false
    t.bigint "user_id", null: false
    t.bigint "complexity_id", null: false
    t.boolean "publication", default: false, null: false
    t.bigint "settlement_dep", null: false
    t.bigint "settlement_arr", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "route_status_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settlement_types", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "abbreviation", default: " ", null: false
  end

  create_table "settlements", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.decimal "elevation", null: false
    t.bigint "settlement_type_id", null: false
    t.bigint "chain_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "birthday", null: false
    t.binary "gender", null: false
    t.string "phone", default: " ", null: false
    t.text "about_me"
    t.integer "hiking_count", default: 0, null: false
    t.float "weight", default: 0.0, null: false
    t.float "height", default: 0.0, null: false
    t.float "bpws", default: 0.0, null: false
    t.float "bpvs", default: 0.0, null: false
    t.float "bpww", default: 0.0, null: false
    t.float "bpvw", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "physical_condition_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weather_types", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chains", "complexities"
  add_foreign_key "foods", "food_categories"
  add_foreign_key "foods", "food_types"
  add_foreign_key "foods", "producers"
  add_foreign_key "items", "object_categories"
  add_foreign_key "items", "object_importances"
  add_foreign_key "items", "producers"
  add_foreign_key "items", "seasons"
  add_foreign_key "routes", "chains"
  add_foreign_key "routes", "complexities"
  add_foreign_key "routes", "route_statuses"
  add_foreign_key "routes", "settlements", column: "settlement_arr"
  add_foreign_key "routes", "settlements", column: "settlement_dep"
  add_foreign_key "settlements", "chains"
  add_foreign_key "settlements", "settlement_types"
end
