json.array!(@car_rentals) do |car_rental|
  json.extract! car_rental, :id, :occurence, :cost, :description
  json.url car_rental_url(car_rental, format: :json)
end
