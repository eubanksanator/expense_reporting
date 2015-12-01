class AddBusinessClientIdToEntertainExpenseExplanatin < ActiveRecord::Migration
  def change
    add_column :entertain_expense_explanations, :business_client_id, :integer
  end
end
