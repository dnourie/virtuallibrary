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

ActiveRecord::Schema.define(version: 20140106153652) do

  create_table "book_categories", force: true do |t|
    t.integer "book_id"
    t.integer "category_id"
  end

  add_index "book_categories", ["book_id"], name: "index_book_categories_on_book_id"
  add_index "book_categories", ["category_id"], name: "index_book_categories_on_category_id"

  create_table "book_histories", force: true do |t|
    t.integer  "book_id",                     null: false
    t.integer  "user_id",                     null: false
    t.boolean  "is_returned", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_histories", ["book_id"], name: "index_book_histories_on_book_id"
  add_index "book_histories", ["user_id"], name: "index_book_histories_on_user_id"

  create_table "books", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "isbn"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "book_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["book_id"], name: "index_reviews_on_book_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
