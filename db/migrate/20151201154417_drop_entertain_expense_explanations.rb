class DropEntertainExpenseExplanations < ActiveRecord::Migration
  def change
    drop_table :entertain_expense_explanations
  end
end
