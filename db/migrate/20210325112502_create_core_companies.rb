class CreateCoreCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :core_companies, id: false do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', primary: true, unique: true, index: true
      t.string :status

      t.timestamps
      t.datetime :deleted_at
    end
  end
end
