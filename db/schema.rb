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

ActiveRecord::Schema.define(version: 2019_12_11_185446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "company"
    t.string "address"
    t.string "city"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_projects_on_customer_id"
  end

  create_table "task_entries", force: :cascade do |t|
    t.bigint "task_id"
    t.integer "duration"
    t.datetime "start_time"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_task_entries_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "user_id"
    t.string "task_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "projects", "customers"
  add_foreign_key "task_entries", "tasks"
  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "users"
end
