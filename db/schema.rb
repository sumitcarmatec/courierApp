# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_08_104654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "couriers", force: :cascade do |t|
    t.integer "sender_id", null: false
    t.integer "receiver_id", null: false
    t.float "weight"
    t.integer "service_type"
    t.float "price"
    t.integer "payment_mode"
    t.integer "status"
    t.string "serial_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.text "address"
    t.string "mobile_no"
    t.integer "pin_code"
    t.integer "user_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
