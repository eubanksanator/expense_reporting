class ChangeCostToDecimal < ActiveRecord::Migration
  def change
    change_column :cab_fares, :cost, :decimal
  end
end
