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

ActiveRecord::Schema.define(version: 20140401075251) do

  create_table "answer_files", force: true do |t|
    t.integer  "answer_id"
    t.integer  "user_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answer_files", ["answer_id"], name: "index_answer_files_on_answer_id", using: :btree
  add_index "answer_files", ["user_id"], name: "index_answer_files_on_user_id", using: :btree

  create_table "answers", force: true do |t|
    t.integer  "subject_id"
    t.integer  "user_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["subject_id"], name: "index_answers_on_subject_id", using: :btree
  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "departments", force: true do |t|
    t.integer  "school_id"
    t.string   "name"
    t.string   "kind"
    t.string   "prefecture"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["kind"], name: "index_departments_on_kind", using: :btree
  add_index "departments", ["prefecture"], name: "index_departments_on_prefecture", using: :btree
  add_index "departments", ["school_id"], name: "index_departments_on_school_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "type"
    t.string   "establishment"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools", ["establishment"], name: "index_schools_on_establishment", using: :btree
  add_index "schools", ["name"], name: "index_schools_on_name", using: :btree
  add_index "schools", ["type"], name: "index_schools_on_type", using: :btree

  create_table "subjects", force: true do |t|
    t.integer  "department_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["department_id"], name: "index_subjects_on_department_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "email"
    t.integer  "school_id"
    t.integer  "department_id"
    t.integer  "graduate_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["department_id"], name: "index_users_on_department_id", using: :btree
  add_index "users", ["school_id"], name: "index_users_on_school_id", using: :btree

  create_table "wish_universities", force: true do |t|
    t.integer  "user_id"
    t.integer  "university_id"
    t.integer  "department_id"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wish_universities", ["department_id"], name: "index_wish_universities_on_department_id", using: :btree
  add_index "wish_universities", ["university_id"], name: "index_wish_universities_on_university_id", using: :btree
  add_index "wish_universities", ["user_id", "university_id", "department_id"], name: "wish_universities_uniquness", unique: true, using: :btree
  add_index "wish_universities", ["user_id"], name: "index_wish_universities_on_user_id", using: :btree

end