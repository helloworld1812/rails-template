class RenameTableKeys < ActiveRecord::Migration[6.1]
  def change
    drop_table(:keys, if_exists: true)
  end
end
