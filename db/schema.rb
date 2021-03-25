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

ActiveRecord::Schema.define(version: 2021_03_24_054944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.uuid "uuid", null: false
    t.string "name"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uuid"], name: "index_companies_on_uuid"
  end

  create_table "employees", force: :cascade do |t|
    t.uuid "uuid", null: false
    t.bigint "company_id"
    t.bigint "hr_id"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["hr_id"], name: "index_employees_on_hr_id"
    t.index ["uuid"], name: "index_employees_on_uuid"
  end

  create_table "hrs", force: :cascade do |t|
    t.uuid "uuid", null: false
    t.bigint "company_id"
    t.string "phone"
    t.string "name"
    t.string "email"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_hrs_on_company_id"
    t.index ["uuid"], name: "index_hrs_on_uuid"
  end

  create_table "tasks", force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "configuration_uuid", null: false
    t.uuid "group_uuid", null: false, comment: "which employee does this task belongs to."
    t.uuid "company_uuid", null: false
    t.string "role", null: false
    t.string "status", null: false
    t.string "assignee_type", null: false
    t.string "assignee_uuids", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_uuid"], name: "index_tasks_on_company_uuid"
    t.index ["configuration_uuid"], name: "index_tasks_on_configuration_uuid"
    t.index ["group_uuid"], name: "index_tasks_on_group_uuid"
    t.index ["uuid"], name: "index_tasks_on_uuid"
  end

end
