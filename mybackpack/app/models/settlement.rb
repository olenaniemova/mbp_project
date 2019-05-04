# frozen_string_literal: true

# Class Settlement Type
class Settlement < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :description, presence: true
  validates :elevation, presence: true

  scope :full_title, ->(settlement) { "#{settlement.settlement_type.abbreviation}. #{settlement.title}" }

  belongs_to :settlement_type
  belongs_to :chain

  has_many :route_place
  has_many :route, through: :route_place
end
