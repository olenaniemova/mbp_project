# frozen_string_literal: true

# Class Object Importance
class ObjectImportance < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :value, numericality: { only_integer: true }

  has_many :item
end
