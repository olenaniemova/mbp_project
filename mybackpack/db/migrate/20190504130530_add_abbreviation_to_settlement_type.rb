class AddAbbreviationToSettlementType < ActiveRecord::Migration[5.2]
  def change
    change_table :settlement_types do |t|
      t.string :abbreviation, null: false
    end
  end
end
