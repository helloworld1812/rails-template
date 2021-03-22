class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.uuid :uuid, null: false, index: true, unique: true
      t.string :name
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
