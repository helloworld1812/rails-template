class RenameTableKeys < ActiveRecord::Migration[6.1]
  def change
    drop_table(:keys)
  end
end
