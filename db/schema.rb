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
    t.integer  "mother_id"
    t.integer  "doctor_id"
    t.integer  "commenter_id"
    t.integer  "trimester_id"
    t.text     "comment"
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
    t.integer  "trimester"
    t.string   "doc_qual"
    t.string   "regis_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string  "tri_1_1"
    t.string  "tri_1_2"
    t.string  "tri_1_3"
    t.string  "tri_2_1"
    t.string  "tri_2_2"
    t.string  "tri_2_3"
    t.string  "tri_3_1"
    t.string  "tri_3_2"
    t.string  "tri_3_3"

  end

end
