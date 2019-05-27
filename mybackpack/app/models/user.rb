# frozen_srting_literal: true

# class User
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one :profile
  has_many :articles
  has_many :routes

  has_many :user_favorite_foods
  has_many :foods, through: :user_favorite_foods
  has_many :meals, through: :user_favorite_foods

  has_many :user_available_items
  has_many :available_items, through: :user_available_items, source: :items

  has_many :route_items
  has_many :routes_items, through: :route_items, source: :items
  # routes?????

  has_many :route_menus
  has_many :route_foods, through: :route_menus, source: :foods
  has_many :route_meals, through: :route_menus, source: :meals
end
