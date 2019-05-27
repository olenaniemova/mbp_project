# frozen_string_literal: true

# Class Route Menu
class RouteMenu < ApplicationRecord
  belongs_to :user
  belongs_to :food
  belongs_to :route
  belongs_to :meal
end
