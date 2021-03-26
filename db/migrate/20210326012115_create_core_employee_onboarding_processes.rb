class CreateCoreEmployeeOnboardingProcesses < ActiveRecord::Migration[6.1]
  def change
    create_table :core_employee_onboarding_processes, id: false do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', primary: true, unique: true, index: true
      t.uuid :core_company_uuid
      t.uuid :core_employee_uuid
      t.jsonb :configurations
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
