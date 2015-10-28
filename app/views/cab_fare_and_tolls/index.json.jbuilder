json.array!(@cab_fare_and_tolls) do |cab_fare_and_toll|
  json.extract! cab_fare_and_toll, :id, :occurence, :cost, :description
  json.url cab_fare_and_toll_url(cab_fare_and_toll, format: :json)
end
