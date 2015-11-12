json.array!(@cell_phones) do |cell_phone|
  json.extract! cell_phone, :id, :occurence, :cost
  json.url cell_phone_url(cell_phone, format: :json)
end
