class ChangeTravelCostToDecimal < ActiveRecord::Migration
  def change
    change_column :travel_costs, :cost, :decimal
  end
end
