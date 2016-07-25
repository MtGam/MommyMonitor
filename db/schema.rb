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

ActiveRecord::Schema.define(version: 20160722151136) do

  create_table "comments", force: :cascade do |t|
    t.text     "response"
    t.integer  "author_id"
    t.integer  "mother_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone"
    t.string   "address"
    t.string   "password_digest"
    t.boolean  "doc_admin"
    t.date     "dob"
    t.integer  "children"
    t.boolean  "trimester"
    t.string   "doc_qual"
    t.string   "regis_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "tri_1"
    t.boolean  "tri_2"
    t.boolean  "tri_3"
  end

end
