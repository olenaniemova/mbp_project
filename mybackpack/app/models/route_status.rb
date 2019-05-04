# frozen_string_literal: true

# Class Route Status
class RouteStatus < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :route
end
