# frozen_srting_literal: true

# class User Favorite Food
class UserFavoriteFood < ApplicationRecord
  belongs_to :user
  belongs_to :food
  belongs_to :meal

  # scope :user_foods, ->(id) { where(user_id: id) }
end
