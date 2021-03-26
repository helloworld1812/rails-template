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

ActiveRecord::Schema.define(version: 2021_03_26_012434) do

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

  create_table "connector_example_models", id: false, force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uuid"], name: "index_connector_example_models_on_uuid"
  end

  create_table "core_companies", id: false, force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["uuid"], name: "index_core_companies_on_uuid"
  end

  create_table "core_configurations", id: false, force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }
    t.string "status"
    t.uuid "core_company_uuid", null: false
    t.jsonb "config", default: {}
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["uuid"], name: "index_core_configurations_on_uuid"
  end

  create_table "core_employee_onboarding_processes", id: false, force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }
    t.uuid "core_company_uuid"
    t.uuid "core_employee_uuid"
    t.jsonb "configurations"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uuid"], name: "index_core_employee_onboarding_processes_on_uuid"
  end

  create_table "core_employees", id: false, force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }
    t.uuid "core_company_uuid", null: false
    t.uuid "core_hr_uuid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["uuid"], name: "index_core_employees_on_uuid"
  end

  create_table "core_hrs", id: false, force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }
    t.uuid "core_company_uuid", null: false
    t.string "phone"
    t.string "name"
    t.string "email"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["uuid"], name: "index_core_hrs_on_uuid"
  end

  create_table "core_tasks", id: false, force: :cascade do |t|
    t.uuid "uuid", default: -> { "gen_random_uuid()" }
    t.uuid "core_employee_uuid", null: false
    t.uuid "core_configuration_uuid", null: false
    t.uuid "core_process_uuid", null: false
    t.uuid "core_company_uuid", null: false
    t.uuid "assignee_uuids", default: [], array: true
    t.string "assignee_type"
    t.string "task_name", null: false
    t.string "role", null: false
    t.string "status"
    t.string "complete_return_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["core_company_uuid"], name: "index_core_tasks_on_core_company_uuid"
    t.index ["core_configuration_uuid"], name: "index_core_tasks_on_core_configuration_uuid"
    t.index ["core_employee_uuid"], name: "index_core_tasks_on_core_employee_uuid"
    t.index ["core_process_uuid"], name: "index_core_tasks_on_core_process_uuid"
    t.index ["uuid"], name: "index_core_tasks_on_uuid"
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

end
