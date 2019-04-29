class AddFkToFoods < ActiveRecord::Migration[5.2]
  def change
    change_table :foods do |t|
      t.bigint :food_type_id, null: false
      t.bigint :food_category_id, null: false
      t.bigint :producer_id, null: false
    end

    add_foreign_key :foods, :food_types
    add_foreign_key :foods, :food_categories
    add_foreign_key :foods, :producers
  end
end
