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

ActiveRecord::Schema.define(version: 20180621184712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.integer "child_no"
    t.integer "emp_no"
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.date "birth_date"
    t.integer "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "employee_id"
    t.index ["employee_id"], name: "index_children_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "emp_no", null: false
    t.date "birth_date", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "gender", null: false
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
