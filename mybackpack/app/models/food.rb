# frozen_string_literal: true

# Class Food
class Food < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :source, presence: true
  validates :description, presence: true
  validates :caloric, presence: true # 100 g
  validates :weight, presence: true # kg
  validates :volume, presence: true # l

  belongs_to :food_type
  belongs_to :food_category
  belongs_to :producer

  has_many :user_favorite_foods
  has_many :users, through: :user_favorite_foods

  has_many :route_menus
  has_many :route_meals, through: :route_menus, source: :meals
  has_many :route_users, through: :route_menus, source: :users
  has_many :routes, through: :route_menus
end
