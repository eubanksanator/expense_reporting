json.array!(@other_expenses) do |other_expense|
  json.extract! other_expense, :id, :occurence, :description
  json.url other_expense_url(other_expense, format: :json)
end
