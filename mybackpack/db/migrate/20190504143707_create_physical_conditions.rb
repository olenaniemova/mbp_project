class CreatePhysicalConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :physical_conditions do |t|
      t.string :title, null: false

      t.timestamps
    end

    change_table :users do |t|
      t.bigint :physical_condition_id
    end
  end
end
