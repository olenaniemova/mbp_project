class CreateObjectCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :object_categories do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
