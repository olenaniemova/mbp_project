# frozen_string_literal: true

# Class Meal
class Meal < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :user_favorite_foods
  has_many :users, through: :user_favorite_foods

  has_many :route_menus
  has_many :route_foods, through: :route_menus, source: :foods
  has_many :routes, through: :route_menus
end
