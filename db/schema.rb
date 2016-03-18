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

ActiveRecord::Schema.define(version: 20160204213241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "artistic_director_1"
    t.string   "artistic_director_2"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nominations", force: :cascade do |t|
    t.integer  "role_id"
    t.date     "year"
    t.string   "category"
    t.boolean  "won?",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productions", force: :cascade do |t|
    t.string   "title"
    t.integer  "playwright_id"
    t.integer  "company_id"
    t.date     "first_rehearsal"
    t.date     "opening"
    t.date     "closing"
    t.boolean  "staged_reading?",     default: false
    t.boolean  "special_engagement?", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "production_id"
    t.string   "title_of_role"
    t.boolean  "assistant?",    default: false
    t.boolean  "understudy?",   default: false
    t.boolean  "performed?",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "address"
    t.string   "race_ethnicity"
    t.string   "gender_identity"
    t.boolean  "actor?",               default: false
    t.boolean  "director?",            default: false
    t.boolean  "stage_manager?",       default: false
    t.boolean  "costume_designer?",    default: false
    t.boolean  "set_designer?",        default: false
    t.boolean  "light_designer?",      default: false
    t.boolean  "sound_designer?",      default: false
    t.boolean  "dance_choreographer?", default: false
    t.boolean  "fight_choreographer?", default: false
    t.boolean  "producer?",            default: false
    t.boolean  "dramaturg?",           default: false
    t.boolean  "playwright?",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
