class CreateRouteMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :route_menus do |t|
      t.integer :count, null: false, defoult: 1
      t.bigint :user_id
      t.bigint :route_id
      t.bigint :food_id
      t.bigint :meal_id
    end

    add_foreign_key :route_menus, :users
    add_foreign_key :route_menus, :routes
    add_foreign_key :route_menus, :foods
    add_foreign_key :route_menus, :meals
  end
end
