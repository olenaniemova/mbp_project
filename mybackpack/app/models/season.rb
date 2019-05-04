# frozen_string_literal: true

# Class Season
class Season < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :item
end
