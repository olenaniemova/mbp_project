# frozen_string_literal: true

# Class Article
class Article < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true
  validates :text, presence: true
  validates :source, presence: true
  scope :published, -> { where(published: true) }

  has_many :articles_category
  has_many :article_category, through: :articles_category
end
