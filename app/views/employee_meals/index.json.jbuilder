json.array!(@employee_meals) do |employee_meal|
  json.extract! employee_meal, :id, :occurence, :breakfast, :lunch, :dinner
  json.url employee_meal_url(employee_meal, format: :json)
end
