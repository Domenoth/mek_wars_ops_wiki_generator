class CreateOperationTypes < ActiveRecord::Migration
  def change
    create_table :operation_types do |t|
      t.text :name
      t.boolean :export

      t.timestamps
    end
  end
end
