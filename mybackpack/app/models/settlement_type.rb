# frozen_string_literal: true

# Class Settlement Type
class SettlementType < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :abbreviation, length: { maximum: 10 }, presence: true

  has_many :settlement
end
