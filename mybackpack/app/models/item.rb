# frozen_string_literal: true

# Class Item
class Item < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :description, presence: true
  validates :source, presence: true
  validates :weight, presence: true # kg
  validates :volume, presence: true # l

  belongs_to :object_category
  belongs_to :object_importance
  belongs_to :producer
  belongs_to :season
  has_many :items_weather_type
  has_many :weather_type, through: :items_weather_type
end
