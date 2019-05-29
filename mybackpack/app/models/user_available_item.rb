# frozen_srting_literal: true

# class User Available Item
class UserAvailableItem < ApplicationRecord
  belongs_to :user
  belongs_to :item

  def self.item_categories(items)
    categories = []
    items.each do |i|
      categories.push(i.item.object_category.title)
    end
    categories.uniq
  end

  def self.category_items(items, category)
    i_arr = []
    items.each do |i|
      i_arr.push(i) if i.item.object_category.title == category
    end
    i_arr
  end
end
