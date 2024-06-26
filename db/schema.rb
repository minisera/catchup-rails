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

ActiveRecord::Schema[7.0].define(version: 2024_04_30_024858) do
  create_table "accounts", charset: "utf8mb4", force: :cascade do |t|
    t.integer "balance", null: false, comment: "残高"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.bigint "user_id", null: false
    t.string "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_cards_on_account_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "groups", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "members", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.bigint "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_members_on_group_id"
  end

  create_table "payments", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "card_id", null: false
    t.integer "amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_payments_on_card_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "variations", charset: "utf8mb4", force: :cascade do |t|
    t.string "kind"
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_variations_on_book_id"
  end

  add_foreign_key "cards", "accounts"
  add_foreign_key "cards", "users"
  add_foreign_key "members", "groups"
  add_foreign_key "variations", "books"
end
