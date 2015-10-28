json.array!(@travel_costs) do |travel_cost|
  json.extract! travel_cost, :id, :occurence, :cost, :description
  json.url travel_cost_url(travel_cost, format: :json)
end
