# frozen_string_literal: true

class CreatePhysicalConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :physical_conditions do |t|
      t.string :title, null: false

      t.timestamps
    end

  end
end
