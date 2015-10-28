

ActiveRecord::Schema.define(version: 20151028180051) do

  create_table "cab_fare_and_tolls", force: :cascade do |t|
    t.date     "occurence"
    t.integer  "cost"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "local_car_rentals", force: :cascade do |t|
    t.date     "occurence"
    t.integer  "cost"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "travel_costs", force: :cascade do |t|
    t.date     "occurence"
    t.integer  "cost"
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
