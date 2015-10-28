class CreateTravelCosts < ActiveRecord::Migration
  def change
    create_table :travel_costs do |t|
      t.date :occurence
      t.integer :cost
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
