json.array!(@dealers) do |dealer|
  json.extract! dealer, :id, :name, :address, :summary, :bike_id
  json.url dealer_url(dealer, format: :json)
end
