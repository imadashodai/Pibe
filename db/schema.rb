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

ActiveRecord::Schema.define(version: 20160901031531) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formations", force: :cascade do |t|
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.integer  "player3_id"
    t.integer  "player4_id"
    t.integer  "player5_id"
    t.integer  "player6_id"
    t.integer  "player7_id"
    t.integer  "player8_id"
    t.integer  "player9_id"
    t.integer  "player10_id"
    t.integer  "player11_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "team_id_id"
    t.string   "name"
  end

  add_index "formations", ["player10_id"], name: "index_formations_on_player10_id"
  add_index "formations", ["player11_id"], name: "index_formations_on_player11_id"
  add_index "formations", ["player1_id"], name: "index_formations_on_player1_id"
  add_index "formations", ["player2_id"], name: "index_formations_on_player2_id"
  add_index "formations", ["player3_id"], name: "index_formations_on_player3_id"
  add_index "formations", ["player4_id"], name: "index_formations_on_player4_id"
  add_index "formations", ["player5_id"], name: "index_formations_on_player5_id"
  add_index "formations", ["player6_id"], name: "index_formations_on_player6_id"
  add_index "formations", ["player7_id"], name: "index_formations_on_player7_id"
  add_index "formations", ["player8_id"], name: "index_formations_on_player8_id"
  add_index "formations", ["player9_id"], name: "index_formations_on_player9_id"
  add_index "formations", ["team_id_id"], name: "index_formations_on_team_id_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["user_id", "created_at"], name: "index_messages_on_user_id_and_created_at"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "avatar"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "team_id"
    t.string   "avatar"
    t.integer  "age"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["team_id"], name: "index_users_on_team_id"

end
