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

ActiveRecord::Schema.define(version: 20140513191604) do

  create_table "appointments", force: true do |t|
    t.date     "date"
    t.time     "time"
    t.text     "comments"
    t.boolean  "follow_up"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["customer_id"], name: "index_appointments_on_customer_id"

  create_table "costings", force: true do |t|
    t.string   "cost_status"
    t.decimal  "labour_cost"
    t.decimal  "fabric_cost"
    t.decimal  "acc_cost"
    t.decimal  "misc_cost"
    t.integer  "garment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "costings", ["garment_id"], name: "index_costings_on_garment_id"

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_no"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.date     "period_end_date"
    t.decimal  "habby"
    t.decimal  "bank_charge"
    t.decimal  "equipment"
    t.decimal  "stationery"
    t.decimal  "computer"
    t.decimal  "telephone"
    t.decimal  "misc_expense"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "garments", force: true do |t|
    t.string   "garment_type"
    t.text     "garment_description"
    t.integer  "order_id"
    t.decimal  "bust"
    t.decimal  "under_bust"
    t.decimal  "waist"
    t.decimal  "hip_upper"
    t.decimal  "hip_lower"
    t.decimal  "bust_point"
    t.decimal  "front_length"
    t.decimal  "shoulder_to_under_bust"
    t.decimal  "back_length"
    t.decimal  "across_back"
    t.decimal  "shoulderlength"
    t.decimal  "skirt_length"
    t.decimal  "sleeve_length"
    t.decimal  "sleeve_width_upper"
    t.decimal  "sleeve_width_elbow"
    t.decimal  "sleeve_width_wrist"
    t.decimal  "pants_length"
    t.decimal  "jacket_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "garments", ["order_id"], name: "index_garments_on_order_id"

  create_table "orders", force: true do |t|
    t.text     "order_description"
    t.date     "due_date"
    t.decimal  "customer_value_index"
    t.boolean  "closed"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

end
