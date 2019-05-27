# frozen_string_literal: true

class CreateUserFavoriteFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :user_favorite_foods do |t|
      t.bigint :user_id
      t.bigint :food_id
      t.bigint :meal_id

      t.timestamps
    end

    add_foreign_key :user_favorite_foods, :users
    add_foreign_key :user_favorite_foods, :foods
    add_foreign_key :user_favorite_foods, :meals
  end
end
