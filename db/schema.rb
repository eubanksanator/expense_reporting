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

ActiveRecord::Schema.define(version: 20151201143821) do

  create_table "business_clients", force: :cascade do |t|
    t.date     "occurence"
    t.decimal  "meals"
    t.decimal  "enter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cab_fares", force: :cascade do |t|
    t.date     "occurence"
    t.decimal  "cost"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "car_rentals", force: :cascade do |t|
    t.date     "occurence"
    t.decimal  "cost"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cell_phones", force: :cascade do |t|
    t.date     "occurence"
    t.decimal  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_meals", force: :cascade do |t|
    t.date     "occurence"
    t.decimal  "breakfast"
    t.decimal  "lunch"
    t.decimal  "dinner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entertain_expense_explanations", force: :cascade do |t|
    t.date     "occurence"
    t.string   "location"
    t.string   "business_purpose"
    t.string   "person_entertained"
    t.decimal  "amount"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "business_client_id"
  end

  create_table "other_expenses", force: :cascade do |t|
    t.date     "occurence"
    t.text     "description"
    t.decimal  "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "travel_costs", force: :cascade do |t|
    t.date     "occurence"
    t.decimal  "cost"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "department_name"
    t.string   "phone_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
