class CreateLocalCarRentals < ActiveRecord::Migration
  def change
    create_table :local_car_rentals do |t|
      t.date :occurence
      t.integer :cost
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
