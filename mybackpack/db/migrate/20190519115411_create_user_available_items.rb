# frozen_string_literal: true

class CreateUserAvailableItems < ActiveRecord::Migration[5.2]
  def change
    create_table :user_available_items do |t|
      t.bigint :user_id
      t.bigint :item_id
      t.integer :count, null: false, default: 1
    end

    add_foreign_key :user_available_items, :users
    add_foreign_key :user_available_items, :items
  end
end
