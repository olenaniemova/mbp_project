# frozen_string_literal: true

# Class Route
class Route < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :duration, presence: true

  validates :chain_id, presence: true
  # validates :user_id, presence: true
  validates :complexity_id, presence: true
  validates :settlement_dep, presence: true
  validates :settlement_arr, presence: true

  scope :published, -> { where(published: true) }

  belongs_to :chain
  belongs_to :complexity
  # belongs_to :settlement

  has_many :route_place
  has_many :settlement, through: :route_place
end
