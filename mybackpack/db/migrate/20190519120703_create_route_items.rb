# frozen_string_literal: true

class CreateRouteItems < ActiveRecord::Migration[5.2]
  def change
    create_table :route_items do |t|
      t.integer :count, null: false, defoult: 1
      t.bigint :user_id
      t.bigint :item_id
      t.bigint :route_id
    end

    add_foreign_key :route_items, :users
    add_foreign_key :route_items, :items
    add_foreign_key :route_items, :routes
  end
end
