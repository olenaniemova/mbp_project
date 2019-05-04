class CreateComplexities < ActiveRecord::Migration[5.2]
  def change
    create_table :complexities do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :value, null: false

      t.timestamps
    end
  end
end
