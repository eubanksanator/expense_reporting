class ChangeRentalCostToDecimal < ActiveRecord::Migration
  def change
    change_column :car_rentals, :cost, :decimal
  end
end
