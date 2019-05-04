# frozen_string_literal: true

# Class Object Category
class ObjectCategory < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :item
end
