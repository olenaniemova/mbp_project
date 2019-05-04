class AddComplexityToChains < ActiveRecord::Migration[5.2]
  def change
    change_table :chains do |t|
      t.bigint :complexity_id
    end

    change_table :routes do |t|
      t.bigint :route_status_id
    end

    add_foreign_key :chains, :complexities
    add_foreign_key :routes, :route_statuses
  end
end
