class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer :duration, null: false
      t.bigint :chain_id, null: false
      t.bigint :user_id, null: false
      t.bigint :complexity_id, null: false
      t.boolean :publication, null: false, default: false
      t.bigint :settlement_dep, null: false
      t.bigint :settlement_arr, null: false

      t.timestamps
    end

    add_foreign_key :routes, :chains
    add_foreign_key :routes, :complexities
    add_foreign_key :routes, :settlements, column: 'settlement_dep', primery_key: 'settlement_id'
    add_foreign_key :routes, :settlements, column: 'settlement_arr', primery_key: 'settlement_id'
  end
end
