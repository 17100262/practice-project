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

ActiveRecord::Schema.define(version: 20161030072223) do

  create_table "cities", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degreeprograms", force: :cascade do |t|
    t.string   "degree_type"
    t.string   "name"
    t.integer  "subdiscipline_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "discipline_id"
  end

  create_table "discipline_universities", force: :cascade do |t|
    t.integer  "university_id"
    t.integer  "discipline_id"
    t.integer  "subdiscipline_id"
    t.integer  "degreeprogram_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["degreeprogram_id"], name: "index_discipline_universities_on_degreeprogram_id"
    t.index ["subdiscipline_id"], name: "index_discipline_universities_on_subdiscipline_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subdisciplines", force: :cascade do |t|
    t.string   "name"
    t.integer  "discipline_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "description"
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "city_id",     null: false
  end

end
