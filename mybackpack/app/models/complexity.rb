# frozen_string_literal: true

# Class Complexity
class Complexity < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :description, presence: true
  validates :value, presence: true, numericality: { only_integer: true }

  has_many :routes
  has_many :chains
end
