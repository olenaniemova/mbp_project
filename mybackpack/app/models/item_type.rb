# frozen_string_literal: true

# Class Item Type
class ItemType < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :item
end
