# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
       t.string :first_name, null: false
      t.string :last_name, null: false
      t.datetime :birthday, null: false
      t.binary :gender, null: false
      t.string :phone, null: false, default: " "
      t.text :about_me
      t.integer :hiking_count, null: false, default: 0
      t.float :weight, null: false, default: 0
      t.float :height, null: false, default: 0
      t.float :bpws, null: false, default: 0 # Backpack Weight Summer
      t.float :bpvs, null: false, default: 0 # Backpack Volume Summer
      t.float :bpww, null: false, default: 0 # Backpack Weight Winter
      t.float :bpvw, null: false, default: 0 # Backpack Volume Winter
      t.bigint :physical_condition_id
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
