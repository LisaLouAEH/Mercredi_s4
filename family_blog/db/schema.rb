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

ActiveRecord::Schema.define(version: 2018_10_24_180001) do

  create_table "articles", force: :cascade do |t|
    t.integer "users_id"
    t.integer "categories_id"
    t.string "titre"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_articles_on_categories_id"
    t.index ["users_id"], name: "index_articles_on_users_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commentaires", force: :cascade do |t|
    t.integer "users_id"
    t.integer "articles_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articles_id"], name: "index_commentaires_on_articles_id"
    t.index ["users_id"], name: "index_commentaires_on_users_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "users_id"
    t.integer "articles_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articles_id"], name: "index_likes_on_articles_id"
    t.index ["users_id"], name: "index_likes_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
