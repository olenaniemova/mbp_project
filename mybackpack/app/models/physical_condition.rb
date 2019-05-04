# frozen_string_literal: true

# class Physical Condition
class PhysicalCondition < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :user
end
