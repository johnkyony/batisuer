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

ActiveRecord::Schema.define(version: 20161001150959) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "grade_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accounts", ["grade_id"], name: "index_accounts_on_grade_id"
  add_index "accounts", ["student_id"], name: "index_accounts_on_student_id"

  create_table "directions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "double_entry_account_balances", force: :cascade do |t|
    t.string   "account",    limit: 31, null: false
    t.string   "scope",      limit: 23
    t.integer  "balance",               null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "double_entry_account_balances", ["account"], name: "index_account_balances_on_account"
  add_index "double_entry_account_balances", ["scope", "account"], name: "index_account_balances_on_scope_and_account", unique: true

  create_table "double_entry_line_aggregates", force: :cascade do |t|
    t.string   "function",   limit: 15, null: false
    t.string   "account",    limit: 31, null: false
    t.string   "code",       limit: 47
    t.string   "scope",      limit: 23
    t.integer  "year"
    t.integer  "month"
    t.integer  "week"
    t.integer  "day"
    t.integer  "hour"
    t.integer  "amount",                null: false
    t.string   "filter"
    t.string   "range_type", limit: 15, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "double_entry_line_aggregates", ["function", "account", "code", "year", "month", "week", "day"], name: "line_aggregate_idx"

  create_table "double_entry_line_checks", force: :cascade do |t|
    t.integer  "last_line_id", null: false
    t.boolean  "errors_found", null: false
    t.text     "log"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "double_entry_line_metadata", force: :cascade do |t|
    t.integer  "line_id",               null: false
    t.string   "key",        limit: 48, null: false
    t.string   "value",      limit: 64, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "double_entry_line_metadata", ["line_id", "key", "value"], name: "lines_meta_line_id_key_value_idx"

  create_table "double_entry_lines", force: :cascade do |t|
    t.string   "account",         limit: 31, null: false
    t.string   "scope",           limit: 23
    t.string   "code",            limit: 47, null: false
    t.integer  "amount",                     null: false
    t.integer  "balance",                    null: false
    t.integer  "partner_id"
    t.string   "partner_account", limit: 31, null: false
    t.string   "partner_scope",   limit: 23
    t.integer  "detail_id"
    t.string   "detail_type"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "double_entry_lines", ["account", "code", "created_at"], name: "lines_account_code_created_at_idx"
  add_index "double_entry_lines", ["account", "created_at"], name: "lines_account_created_at_idx"
  add_index "double_entry_lines", ["scope", "account", "created_at"], name: "lines_scope_account_created_at_idx"
  add_index "double_entry_lines", ["scope", "account", "id"], name: "lines_scope_account_id_idx"

  create_table "fees", force: :cascade do |t|
    t.integer  "grade_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fees", ["grade_id"], name: "index_fees_on_grade_id"

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "direction_id"
  end

  add_index "grades", ["direction_id"], name: "index_grades_on_direction_id"

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
