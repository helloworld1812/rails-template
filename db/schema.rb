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

ActiveRecord::Schema.define(version: 2021_03_26_051340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "connector_example_models", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
  end

  create_table "core_companies", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
    t.string "status"
    t.string "name"
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
  end

  create_table "core_company_staffs", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "core_company_uuid", null: false
    t.string "phone_country_code"
    t.string "phone_number"
    t.string "phone_extension"
    t.string "name"
    t.string "email"
    t.string "status"
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
    t.index ["core_company_uuid"], name: "index_core_hrs_on_core_company_uuid"
  end

  create_table "core_configurations", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "core_company_uuid", null: false
    t.string "status"
    t.jsonb "config", default: {}
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
    t.index ["core_company_uuid"], name: "index_core_configurations_on_core_company_uuid"
  end

  create_table "core_employee_informations", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "core_employee_uuid", null: false
    t.uuid "core_company_uuid", null: false
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "prior_last_name"
    t.string "preferred_name"
    t.string "salutation"
    t.string "ethnicity"
    t.string "gender"
    t.string "marital_status"
    t.string "ssn"
    t.boolean "smoker"
    t.string "nationality"
    t.date "date_of_birth"
    t.string "middle_initial"
    t.string "home_email"
    t.string "home_phone_country_code"
    t.string "home_phone_number"
    t.string "home_phone_extension"
    t.date "apply_date"
    t.date "hire_date"
    t.date "start_date"
    t.date "termination_date"
    t.string "job_title"
    t.string "department_name"
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
    t.index ["core_company_uuid"], name: "index_core_ei_on_company_uuid"
    t.index ["core_employee_uuid"], name: "index_core_ei_on_employee_uuid"
  end

  create_table "core_employee_onboarding_processes", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "core_employee_uuid", null: false
    t.uuid "core_company_uuid", null: false
    t.jsonb "configurations"
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
    t.index ["core_company_uuid"], name: "index_core_eop_on_core_company_uuid"
    t.index ["core_employee_uuid"], name: "index_core_eop_on_core_employee_uuid"
  end

  create_table "core_employees", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "core_company_uuid"
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
    t.index ["core_company_uuid"], name: "index_core_employees_on_core_company_uuid"
  end

  create_table "core_tasks", primary_key: "uuid", id: :uuid, default: nil, force: :cascade do |t|
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
    t.datetime "core_created_at", precision: 6
    t.datetime "core_updated_at", precision: 6
    t.datetime "core_deleted_at", precision: 6
    t.index ["core_company_uuid"], name: "index_core_tasks_on_core_company_uuid"
    t.index ["core_configuration_uuid"], name: "index_core_tasks_on_core_configuration_uuid"
    t.index ["core_employee_uuid"], name: "index_core_tasks_on_core_employee_uuid"
    t.index ["core_process_uuid"], name: "index_core_tasks_on_core_process_uuid"
  end

end
