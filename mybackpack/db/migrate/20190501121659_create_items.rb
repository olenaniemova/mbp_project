class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.float :weight, null: false
      t.float :volume, null: false
      t.text :description, null: false
      t.string :source, null: false
      t.boolean :individualy, null: false, default: true
      t.bigint :object_category_id, null: false
      t.bigint :object_importance_id, null: false
      t.bigint :season_id, null: false
      t.bigint :producer_id, null: false

      t.timestamps
    end

    add_foreign_key :items, :seasons
    add_foreign_key :items, :object_importances
    add_foreign_key :items, :object_categories
    add_foreign_key :items, :producers
  end
end
