# frozen_string_literal: true

# Class Food Type
class FoodType < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :food
end
