json.array!(@brand_bikes) do |bike|
  json.extract! bike, :id, :name, :summary, :price
  json.url bike_url(bike, format: :json)
end
