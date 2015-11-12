class CreateOtherExpenses < ActiveRecord::Migration
  def change
    create_table :other_expenses do |t|
      t.date :occurence
      t.text :description
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
