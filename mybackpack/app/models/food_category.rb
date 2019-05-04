# frozen_string_literal: true

# Class FoodCategory
class FoodCategory < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :food
end
