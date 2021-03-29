class InitSchema < ActiveRecord::Migration[6.1]
  def up
    # These are extensions that must be enabled in order to support this database
    enable_extension "pgcrypto"
    enable_extension "plpgsql"

    create_table "connector_example_models", id: false do |t|
      t.uuid "uuid", default: -> { "gen_random_uuid()" }
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.datetime "deleted_at"
      t.index ["uuid"], name: "index_connector_example_models_on_uuid"
    end
    create_table "core_companies", id: false do |t|
      t.uuid "uuid", default: -> { "gen_random_uuid()" }
      t.string "status"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.datetime "deleted_at"
      t.index ["uuid"], name: "index_core_companies_on_uuid"
    end
    create_table "core_configurations", id: false do |t|
      t.uuid "uuid", default: -> { "gen_random_uuid()" }
      t.uuid "core_company_uuid", null: false
      t.string "status"
      t.jsonb "config", default: {}
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.datetime "deleted_at"
      t.index ["core_company_uuid"], name: "index_core_configurations_on_core_company_uuid"
      t.index ["uuid"], name: "index_core_configurations_on_uuid"
    end
    create_table "core_employee_informations", id: false do |t|
      t.uuid "uuid", default: -> { "gen_random_uuid()" }
      t.uuid "employee_uuid"
      t.uuid "company_uuid"
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
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.datetime "deleted_at"
      t.index ["company_uuid"], name: "index_core_employee_informations_on_company_uuid"
      t.index ["employee_uuid"], name: "index_core_employee_informations_on_employee_uuid"
      t.index ["uuid"], name: "index_core_employee_informations_on_uuid"
    end
    create_table "core_employee_onboarding_processes", id: false do |t|
      t.uuid "uuid", default: -> { "gen_random_uuid()" }
      t.uuid "core_company_uuid"
      t.uuid "core_employee_uuid"
      t.jsonb "configurations"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.datetime "deleted_at"
      t.index ["core_company_uuid"], name: "index_core_employee_onboarding_processes_on_core_company_uuid"
      t.index ["core_employee_uuid"], name: "index_core_employee_onboarding_processes_on_core_employee_uuid"
      t.index ["uuid"], name: "index_core_employee_onboarding_processes_on_uuid"
    end
    create_table "core_employees", id: false do |t|
      t.uuid "uuid", default: -> { "gen_random_uuid()" }
      t.uuid "core_company_uuid", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.datetime "deleted_at"
      t.index ["core_company_uuid"], name: "index_core_employees_on_core_company_uuid"
      t.index ["uuid"], name: "index_core_employees_on_uuid"
    end
    create_table "core_hrs", id: false do |t|
      t.uuid "uuid", default: -> { "gen_random_uuid()" }
      t.uuid "core_company_uuid", null: false
      t.string "phone"
      t.string "name"
      t.string "email"
      t.string "status"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.datetime "deleted_at"
      t.index ["core_company_uuid"], name: "index_core_hrs_on_core_company_uuid"
      t.index ["uuid"], name: "index_core_hrs_on_uuid"
    end
    create_table "core_tasks", id: false do |t|
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
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
  end
end