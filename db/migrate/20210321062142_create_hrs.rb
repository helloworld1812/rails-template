class CreateHrs < ActiveRecord::Migration[6.1]
  def change
    create_table :hrs do |t|
      t.uuid :uuid, index: true, unique: true, null: false
      t.belongs_to :company
      t.string :phone
      t.string :name
      t.string :email
      t.integer :status

      t.timestamps
    end
  end
end
