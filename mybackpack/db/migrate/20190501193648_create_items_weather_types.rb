class CreateItemsWeatherTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :items_weather_types do |t|
      t.belongs_to :item, index: true
      t.belongs_to :weather_type, index: true

      t.timestamps
    end
  end
end
