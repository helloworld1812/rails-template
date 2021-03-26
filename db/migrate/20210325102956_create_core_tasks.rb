class CreateCoreTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :core_tasks, id: false do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', primary: true, unique: true, index: true
      t.uuid :core_employee_uuid, null: false, index: true
      t.uuid :core_configuration_uuid, null: false, index: true
      t.uuid :core_process_uuid, null: false, index: true
      t.uuid :core_company_uuid, null: false, index: true
      t.uuid :assignee_uuids, array: true, default: []
      t.string :assignee_type
      t.string :task_name, null: false
      t.string :role, null: false
      t.string :status
      t.string :complete_return_url

      t.timestamps
      t.datetime :deleted_at
    end
  end
end
