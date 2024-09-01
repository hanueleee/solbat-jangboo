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

ActiveRecord::Schema[7.1].define(version: 2024_09_01_062949) do
  create_table "basic_items", force: :cascade do |t|
    t.string "name", null: false
    t.integer "unit", default: 0, null: false
    t.decimal "unit_price", precision: 15, null: false
    t.integer "stock", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exclusive_items", force: :cascade do |t|
    t.integer "partner_id", null: false
    t.integer "basic_item_id", null: false
    t.decimal "exclusive_price", precision: 15, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["basic_item_id"], name: "index_exclusive_items_on_basic_item_id"
    t.index ["partner_id", "basic_item_id"], name: "index_exclusive_items_on_partner_id_and_basic_item_id", unique: true
    t.index ["partner_id"], name: "index_exclusive_items_on_partner_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "name", null: false
    t.string "business_registration_number"
    t.string "representative"
    t.string "address"
    t.string "phone_number"
    t.integer "partner_type", default: 0
    t.integer "primary_payment_method", default: 0
    t.boolean "uses_exclusive_item_book", default: false
    t.boolean "is_vat_applicable", default: false
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trades", force: :cascade do |t|
    t.integer "partner_id", null: false
    t.date "trade_date", null: false
    t.integer "trade_type", default: 0, null: false
    t.string "title", null: false
    t.integer "payment_method", default: 0, null: false
    t.decimal "basic_amount", precision: 15, null: false
    t.decimal "vat_amount", precision: 15
    t.decimal "total_amount", precision: 15
    t.decimal "received_amount", precision: 15
    t.decimal "payment_amount", precision: 15
    t.decimal "receivable_amount", precision: 15
    t.decimal "payable_amount", precision: 15
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_trades_on_partner_id"
  end

end
