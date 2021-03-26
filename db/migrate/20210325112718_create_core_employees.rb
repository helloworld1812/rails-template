class CreateCoreEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :core_employees, id: false do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', primary: true, unique: true, index: true
      t.uuid :core_company_uuid, null: false
      t.uuid :core_hr_uuid

      t.timestamps
      t.datetime :deleted_at
    end
  end
end
