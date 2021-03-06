# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_16_094434) do

  create_table "family_restaurants", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fish_markets", charset: "utf8mb4", force: :cascade do |t|
    t.string "fish_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "market_trades", charset: "utf8", force: :cascade do |t|
    t.string "sellar_type"
    t.bigint "sellar_id"
    t.string "buyer_type"
    t.bigint "buyer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_type", "buyer_id"], name: "index_market_trades_on_buyer"
    t.index ["buyer_type", "buyer_id"], name: "index_market_trades_on_buyer_type_and_id"
    t.index ["sellar_type", "sellar_id"], name: "index_market_trades_on_sellar"
    t.index ["sellar_type", "sellar_id"], name: "index_market_trades_on_sellar_type_and_id"
  end

  create_table "noodle_restaurants", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sushi_restaurants", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
