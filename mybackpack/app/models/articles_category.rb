# frozen_string_literal: true

# Class Articles Categories (join)
class ArticlesCategory < ApplicationRecord
  belongs_to :article
  belongs_to :article_category
end
