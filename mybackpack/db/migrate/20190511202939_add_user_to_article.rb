# frozen_string_literal: true

class AddUserToArticle < ActiveRecord::Migration[5.2]
  def change
    change_table :articles do |t|
      t.bigint :user_id
    end

    add_foreign_key :articles, :users
    add_foreign_key :routes, :users
  end
end
