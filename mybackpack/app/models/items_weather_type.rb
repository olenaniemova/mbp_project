# frozen_string_literal: true

# Class Item Weather Type
class ItemsWeatherType < ApplicationRecord
  belongs_to :item
  belongs_to :weather_type
end
