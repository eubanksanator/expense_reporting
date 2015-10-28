json.array!(@local_car_rentals) do |local_car_rental|
  json.extract! local_car_rental, :id, :occurence, :cost, :description
  json.url local_car_rental_url(local_car_rental, format: :json)
end
