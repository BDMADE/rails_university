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

ActiveRecord::Schema.define(version: 20151206174140) do

  create_table "Courses_Users", id: false, force: :cascade do |t|
    t.integer "user_id",   null: false
    t.integer "course_id", null: false
  end

  create_table "Roles_Users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.string   "name"
    t.text     "details"
    t.string   "answer"
    t.integer  "total_mark"
    t.integer  "course_id"
    t.integer  "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["course_id"], name: "index_assignments_on_course_id"
  add_index "assignments", ["week_id"], name: "index_assignments_on_week_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.date     "start"
    t.date     "end"
    t.string   "course_img"
    t.text     "about"
    t.text     "details"
    t.text     "objective"
    t.string   "prerequisites"
    t.text     "system"
    t.text     "agenda"
    t.text     "faq"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "name"
    t.string   "video_link"
    t.integer  "week_id"
    t.integer  "course_id"
    t.integer  "syllabus_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lectures", ["course_id"], name: "index_lectures_on_course_id"
  add_index "lectures", ["syllabus_id"], name: "index_lectures_on_syllabus_id"
  add_index "lectures", ["week_id"], name: "index_lectures_on_week_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "syllabuses", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "topics"
    t.datetime "released"
    t.datetime "deadline"
    t.integer  "lectures_time"
    t.integer  "homework_time"
    t.boolean  "handout"
    t.string   "download_file_name"
    t.integer  "course_id"
    t.integer  "week_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "syllabuses", ["course_id"], name: "index_syllabuses_on_course_id"
  add_index "syllabuses", ["week_id"], name: "index_syllabuses_on_week_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "location"
    t.integer  "postal_code"
    t.string   "company"
    t.string   "job_function"
    t.string   "experience_level"
    t.string   "development_language"
    t.boolean  "newsletter",             default: false, null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weeks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
