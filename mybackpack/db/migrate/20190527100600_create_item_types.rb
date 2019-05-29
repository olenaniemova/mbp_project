class CreateItemTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_types do |t|
      t.string :title, null: false

      t.timestamps
    end

    change_table :items do |t|
      t.bigint :item_type_id
    end

    add_foreign_key :items, :item_types
  end
end
