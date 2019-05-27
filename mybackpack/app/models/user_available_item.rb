# frozen_srting_literal: true

# class User Available Item
class UserAvailableItem < ApplicationRecord
  belongs_to :user
  belongs_to :item
end
