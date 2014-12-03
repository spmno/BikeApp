json.array!(@bike_photos) do |bike_photo|
  json.extract! bike_photo, :id, :bike_id, :photo
  json.url bike_photo_url(bike_photo, format: :json)
end
