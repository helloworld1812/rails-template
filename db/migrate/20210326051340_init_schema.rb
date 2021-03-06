class InitSchema < ActiveRecord::Migration[6.1]
  def up
    # These are extensions that must be enabled in order to support this database
    enable_extension "pgcrypto"
    enable_extension "plpgsql"

    create_table "core_companies", id: false do |t|
      t.uuid "uuid", null: false, primary_key: true
      t.string "status"
      t.string "name"
      t.datetime "core_created_at", precision: 6
      t.datetime "core_updated_at", precision: 6
      t.datetime "core_deleted_at", precision: 6
    end
    create_table "configurations", id: false do |t|
      t.uuid "uuid", null: false, primary_key: true
      t.uuid "core_company_uuid", null: false
      t.string "status"
      t.jsonb "config", default: {}
      t.jsonb "default_assignments", default: {}
      t.datetime "deleted_at", precision: 6
      t.timestamps
      t.index ["core_company_uuid"], name: "index_core_configurations_on_core_company_uuid"
    end
    create_table "core_employee_informations", id: false do |t|
      t.uuid "uuid", null: false, primary_key: true
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
      t.timestamps
      t.index ["core_company_uuid"], name: "index_core_ei_on_company_uuid"
      t.index ["core_employee_uuid"], name: "index_core_ei_on_employee_uuid"
      # t.index ["uuid"], name: "index_core_employee_informations_on_uuid"
    end
    create_table :core_onboarding_events, id: false do |t|
      t.uuid :uuid, null: false, primary_key: true
      t.uuid :core_company_uuid
      t.uuid :core_employee_uuid
      t.uuid :configuration_uuid
      t.datetime :core_created_at
      t.datetime :core_updated_at
      t.datetime :core_deleted_at
      t.string :status
      t.string :app_name

      t.timestamps
      t.index :core_company_uuid
      t.index :core_employee_uuid
    end
    create_table "core_employees", id: false do |t|
      t.uuid "uuid", null: false, primary_key: true
      t.uuid "core_company_uuid", null: false
      t.datetime "core_created_at", precision: 6
      t.datetime "core_updated_at", precision: 6
      t.datetime "core_deleted_at", precision: 6
      t.timestamps
      t.index ["core_company_uuid"], name: "index_core_employees_on_core_company_uuid"
    end
    create_table "core_company_staffs", id: false do |t|
      t.uuid "uuid", null: false, primary_key: true
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
      t.timestamps
      t.index ["core_company_uuid"], name: "index_core_hrs_on_core_company_uuid"
    end
    create_table "tasks", id: false do |t|
      t.uuid "uuid", null: false, primary_key: true
      # t.uuid "core_employee_uuid", null: false
      # t.uuid "configuration_uuid", null: false
      t.uuid "core_onboarding_event_uuid", null: false
      t.uuid "core_company_uuid", null: false
      t.uuid "assignee_uuids", default: [], array: true
      t.string "assignee_type"
      t.string "task_name", null: false
      t.string "role", null: false
      t.string "status"
      t.string "complete_return_url"
      t.datetime "deleted_at", precision: 6
      t.timestamps
      t.index :core_company_uuid
      # t.index :core_employee_uuid
      t.index :core_onboarding_event_uuid
      # t.index :configuration_uuid
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
  end
end
