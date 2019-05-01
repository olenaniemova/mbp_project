# frozen_string_literal: true

# Class Weather Type
class WeatherType < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :items_weather_type
  has_many :weather_type, through: :items_weather_type
end
