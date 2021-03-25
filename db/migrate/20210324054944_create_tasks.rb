class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false, index: true
      t.uuid :configuration_uuid, null: false, index: true
      t.uuid :group_uuid, null: false, index: true, comment: 'which employee does this task belongs to.'
      t.uuid :company_uuid, null: false, index: true
      t.string :role, null: false
      t.string :status, null: false
      t.string :assignee_type, null: false
      t.string :assignee_uuids, array: true, default: []

      t.timestamps

    end
  end
end
