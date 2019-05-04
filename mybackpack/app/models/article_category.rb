# frozen_string_literal: true

# Class Article Category
class ArticleCategory < ApplicationRecord
  validates :title, length: { maximum: 200 }, presence: true

  has_many :articles_category
  has_many :article, through: :articles_category
end
