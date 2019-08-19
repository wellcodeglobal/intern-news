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

ActiveRecord::Schema.define(version: 2019_08_06_085945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.bigint "categories_id"
    t.index ["categories_id"], name: "index_articles_on_categories_id"
    t.index ["users_id"], name: "index_articles_on_users_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name_category"
  end

  create_table "comments", force: :cascade do |t|
    t.string "nama_user"
    t.string "email_user"
    t.text "isi_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "articles_id"
    t.index ["articles_id"], name: "index_comments_on_articles_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
  end

  add_foreign_key "articles", "categories", column: "categories_id"
  add_foreign_key "articles", "users", column: "users_id"
  add_foreign_key "comments", "articles", column: "articles_id"
end
