# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_01_143020) do

  create_table "misuration_subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sensor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sensor_id"], name: "index_misuration_subscriptions_on_sensor_id"
    t.index ["user_id"], name: "index_misuration_subscriptions_on_user_id"
  end

  create_table "misurations", force: :cascade do |t|
    t.string "mac"
    t.float "value"
    t.string "unit"
    t.integer "sensor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sensor_id"], name: "index_misurations_on_sensor_id"
  end

  create_table "sensors", force: :cascade do |t|
    t.string "mac"
    t.string "url"
    t.string "tipo"
    t.string "latitudine"
    t.string "longitudine"
    t.string "unit_misura"
    t.integer "user_id"
    t.boolean "public"
    t.time "downtime_to_alarm"
    t.date "last_firmware_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sensors_on_user_id"
  end

  create_table "sensors_group_subscriptions", force: :cascade do |t|
    t.integer "sensor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sensors_group_id"
    t.index ["sensor_id"], name: "index_sensors_group_subscriptions_on_sensor_id"
    t.index ["sensors_group_id"], name: "index_sensors_group_subscriptions_on_sensors_group_id"
  end

  create_table "sensors_groups", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_sensors_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
