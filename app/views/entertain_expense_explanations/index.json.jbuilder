json.array!(@entertain_expense_explanations) do |entertain_expense_explanation|
  json.extract! entertain_expense_explanation, :id, :occurence, :location, :business_purpose, :person_entertained, :amount
  json.url entertain_expense_explanation_url(entertain_expense_explanation, format: :json)
end
