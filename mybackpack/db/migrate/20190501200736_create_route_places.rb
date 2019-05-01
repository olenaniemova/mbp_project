class CreateRoutePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :route_places do |t|
      t.belongs_to :route, index: true
      t.belongs_to :settlement, index: true

      t.timestamps
    end
  end
end
