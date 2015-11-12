json.array!(@business_clients) do |business_client|
  json.extract! business_client, :id, :occurence, :meals, :enter
  json.url business_client_url(business_client, format: :json)
end
