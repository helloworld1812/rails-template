class CreateCoreHrs < ActiveRecord::Migration[6.1]
  def change
    create_table :core_hrs, id: false do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', primary: true, unique: true, index: true
      t.uuid :core_company_uuid, null: false
      t.string :phone
      t.string :name
      t.string :email
      t.string :status

      t.timestamps
      t.datetime :deleted_at
    end
  end
end
