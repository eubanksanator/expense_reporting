class CreateEmployeeMeals < ActiveRecord::Migration
  def change
    create_table :employee_meals do |t|
      t.date :occurence
      t.decimal :breakfast
      t.decimal :lunch
      t.decimal :dinner

      t.timestamps null: false
    end
  end
end
