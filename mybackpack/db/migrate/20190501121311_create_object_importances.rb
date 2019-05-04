class CreateObjectImportances < ActiveRecord::Migration[5.2]
  def change
    create_table :object_importances do |t|
      t.string :title, null: false
      t.integer :value, null: false

      t.timestamps
    end
  end
end
