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

ActiveRecord::Schema[7.0].define(version: 2022_09_10_080200) do
  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "gender"
    t.string "license_number"
    t.string "vehicle_type_licensed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "driver_image"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_description"
    t.string "departure_location"
    t.string "destination_location"
    t.string "estimated_distance_in_km"
    t.integer "driver_id"
    t.integer "vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "registration_no"
    t.string "vehicle_type"
    t.string "vehicle_image_url"
    t.string "vehicle_condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
