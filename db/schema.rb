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

ActiveRecord::Schema.define(version: 20170221014123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devices", force: :cascade do |t|
    t.string   "device_name"
    t.string   "deviceable_type"
    t.integer  "deviceable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "device_type"
    t.string   "device_os"
    t.string   "os_version"
    t.index ["deviceable_type", "deviceable_id"], name: "index_devices_on_deviceable_type_and_deviceable_id", using: :btree
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "field"
    t.text     "description"
    t.string   "experienceable_type"
    t.integer  "experienceable_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["experienceable_type", "experienceable_id"], name: "index_experiences_on_experienceable_type_and_experienceable_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "surname"
    t.string   "location"
    t.string   "occupation"
    t.text     "interests"
    t.string   "alternative_email"
    t.string   "nationality"
    t.text     "small_bio"
    t.date     "date_of_birth"
    t.string   "educational_background"
    t.string   "marital_status"
    t.string   "gender"
    t.string   "mobile_money_number"
    t.string   "phone_number"
    t.integer  "age"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
