class CreateCabFareAndTolls < ActiveRecord::Migration
  def change
    create_table :cab_fare_and_tolls do |t|
      t.date :occurence
      t.integer :cost
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
