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

ActiveRecord::Schema.define(version: 20160925205736) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "grade_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accounts", ["grade_id"], name: "index_accounts_on_grade_id"
  add_index "accounts", ["student_id"], name: "index_accounts_on_student_id"

  create_table "fees", force: :cascade do |t|
    t.integer  "grade_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fees", ["grade_id"], name: "index_fees_on_grade_id"

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoicings", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "received_amount"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "invoicings", ["student_id"], name: "index_invoicings_on_student_id"

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "receipts", ["student_id"], name: "index_receipts_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "parent_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "profile_image_id"
  end

  add_index "students", ["parent_id"], name: "index_students_on_parent_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
