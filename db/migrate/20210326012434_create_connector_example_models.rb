class CreateConnectorExampleModels < ActiveRecord::Migration[6.1]
  def change
    create_table :connector_example_models, id: false do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', primary: true, unique: true, index: true

      t.timestamps
    end
  end
end
