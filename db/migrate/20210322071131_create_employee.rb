class CreateEmployee < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.uuid :uuid, index: true, unique: true, null: false
      t.belongs_to :company
      t.belongs_to :hr
      t.integer :status

      t.timestamps
    end
  end
end
