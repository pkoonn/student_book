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

ActiveRecord::Schema.define(version: 20170521161321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_attendances_on_subject_id", using: :btree
    t.index ["user_id"], name: "index_attendances_on_user_id", using: :btree
  end

  create_table "classroom", force: :cascade do |t|
    t.string   "name",                    null: false
    t.json     "seat_rule",  default: {}, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title",                 null: false
    t.string   "body",                  null: false
    t.integer  "notificationable_id",   null: false
    t.string   "notificationable_type", null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["user_id"], name: "index_notifications_on_user_id", using: :btree
  end

  create_table "regular_school_days", force: :cascade do |t|
    t.integer  "subject_id"
    t.date     "hold_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_regular_school_days_on_subject_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "classroom_id"
    t.integer  "timetables",   default: [], null: false, array: true
    t.string   "name",                      null: false
    t.integer  "order",        default: [], null: false, array: true
    t.integer  "year",                      null: false
    t.integer  "semester",                  null: false
    t.integer  "day_of_week",               null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["classroom_id"], name: "index_subjects_on_classroom_id", using: :btree
    t.index ["user_id"], name: "index_subjects_on_user_id", using: :btree
  end

  create_table "user_subject", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_user_subject_on_subject_id", using: :btree
    t.index ["user_id"], name: "index_user_subject_on_user_id", using: :btree
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "kana",       null: false
    t.string   "number",     null: false
    t.string   "user_name",  null: false
    t.string   "course_id",  null: false
    t.string   "password",   null: false
    t.string   "type",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
