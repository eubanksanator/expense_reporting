class CreateBusinessClients < ActiveRecord::Migration
  def change
    create_table :business_clients do |t|
      t.date :occurence
      t.decimal :meals
      t.decimal :enter

      t.timestamps null: false
    end
  end
end
