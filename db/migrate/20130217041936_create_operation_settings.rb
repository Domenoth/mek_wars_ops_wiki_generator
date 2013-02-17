class CreateOperationSettings < ActiveRecord::Migration
  def change
    create_table :operation_settings do |t|
      t.references :operation_type
      t.text :identifier
      t.text :default_value
      t.text :display
      t.boolean :export, default: false

      t.timestamps
    end
  end
end
