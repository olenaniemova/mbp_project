class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :source, null: false
      t.integer :caloric, null: false
      t.float :weight, null: false
      t.float :volume, null: false

      t.timestamps
    end
  end
end
