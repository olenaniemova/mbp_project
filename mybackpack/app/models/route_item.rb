# frozen_string_literal: true

# Class Route Item
class RouteItem < ApplicationRecord
  belongs_to :user
  belongs_to :item
  belongs_to :route

  scope :items, ->(route, user) { where('route_id = ? AND user_id = ?', route, user) }
end
