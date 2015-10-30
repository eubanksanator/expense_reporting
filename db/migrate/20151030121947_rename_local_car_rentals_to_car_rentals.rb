class RenameLocalCarRentalsToCarRentals < ActiveRecord::Migration
  def self.up
    rename_table :local_car_rentals, :car_rentals
  end
  def self.down
    rename_table :car_rentals, :local_car_rentals
  end
end
