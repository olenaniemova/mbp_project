class CreateProducers < ActiveRecord::Migration[5.2]
  def change
    create_table :producers do |t|
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
