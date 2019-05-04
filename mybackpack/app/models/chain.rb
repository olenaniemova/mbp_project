# frozen_string_literal: true

# Class Settlement Type
class Chain < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :description, presence: true

  belongs_to :complexity
  has_many :settlement
  has_many :route
end
