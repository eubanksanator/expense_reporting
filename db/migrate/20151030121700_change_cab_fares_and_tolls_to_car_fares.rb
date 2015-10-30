class ChangeCabFaresAndTollsToCarFares < ActiveRecord::Migration
  def self.up
    rename_table :cab_fare_and_tolls, :cab_fares
  end
  def self.down
    rename_table :cab_fares, :cab_fare_and_tolls
  end
end
