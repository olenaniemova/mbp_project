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
end
