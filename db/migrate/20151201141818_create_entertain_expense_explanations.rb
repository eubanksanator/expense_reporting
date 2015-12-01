class CreateEntertainExpenseExplanations < ActiveRecord::Migration
  def change
    create_table :entertain_expense_explanations do |t|
      t.date :occurence
      t.string :location
      t.string :business_purpose
      t.string :person_entertained
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
