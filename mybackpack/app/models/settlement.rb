# frozen_string_literal: true

# Class Settlement Type
class Settlement < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :description, presence: true
  validates :elevation, presence: true

  belongs_to :settlement_type
  belongs_to :chain
  has_many :route

  has_many :route_place
  has_many :settlement, through: :route_place
end
