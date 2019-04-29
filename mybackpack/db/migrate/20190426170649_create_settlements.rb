class CreateSettlements < ActiveRecord::Migration[5.2]
  def change
    create_table :settlements do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.decimal :elevation, null: false
      t.bigint :settlement_type_id, null: false
      t.bigint :chain_id, null: false

      t.timestamps
    end

    add_foreign_key :settlements, :settlement_types
    add_foreign_key :settlements, :chains
  end
end
