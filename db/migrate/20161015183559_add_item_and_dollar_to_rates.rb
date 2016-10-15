class AddItemAndDollarToRates < ActiveRecord::Migration[5.0]
  def change
    add_column :rates, :item, :string
    add_column :rates, :dollar, :decimal
  end
end
