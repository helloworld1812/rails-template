class CreateKeys < ActiveRecord::Migration[6.1]
  def change
    create_table :keys, id: :uuid do |t|
      t.text :public_key
      t.timestamps
    end
  end
end
