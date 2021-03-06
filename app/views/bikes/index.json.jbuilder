json.array!(@bikes) do |bike|
  json.extract! bike, :id, :name, :summary, :price
  json.url bike_url(bike, format: :json)
  json.photos bike.bike_photos.all
end
