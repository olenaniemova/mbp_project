class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.string :source, null: false
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end
