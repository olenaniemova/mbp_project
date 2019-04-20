class CreateArticlesCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :articles_categories do |t|
      t.belongs_to :article, index: true
      t.belongs_to :article_category, index: true

      t.timestamps
    end
  end
end
