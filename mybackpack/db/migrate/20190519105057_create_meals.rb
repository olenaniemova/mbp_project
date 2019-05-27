# frozen_string_literal: true

class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
