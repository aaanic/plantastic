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

ActiveRecord::Schema.define(version: 2019_08_30_115714) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remote_image_url"
  end

  create_table "environment_plants", force: :cascade do |t|
    t.string "nickname"
    t.bigint "plant_id"
    t.bigint "environment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_environment_plants_on_environment_id"
    t.index ["plant_id"], name: "index_environment_plants_on_plant_id"
  end

  create_table "environment_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "environment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_environment_users_on_environment_id"
    t.index ["user_id"], name: "index_environment_users_on_user_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "latin_name"
    t.string "category"
    t.string "max_height"
    t.string "care_level"
    t.string "light_preference"
    t.text "description"
    t.string "remote_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "specifics"
  end

  create_table "reminders", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "environment_id"
    t.string "frequency"
    t.string "weekday"
    t.integer "hours"
    t.index ["environment_id"], name: "index_reminders_on_environment_id"
    t.index ["user_id"], name: "index_reminders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.bigint "environment_id"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["environment_id"], name: "index_users_on_environment_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "environment_plants", "environments"
  add_foreign_key "environment_plants", "plants"
  add_foreign_key "environment_users", "environments"
  add_foreign_key "environment_users", "users"
  add_foreign_key "reminders", "users"
end
