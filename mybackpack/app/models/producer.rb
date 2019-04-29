# frozen_string_literal: true

# Class Produser
class Producer < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :description, presence: true

  has_many :food
end
