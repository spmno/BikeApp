json.(@bike, :id, :name,  :summary, :created_at, :updated_at)
json.id @bike.id
json.name @bike.name
json.summary @bike.summary
json.price @bike.price
json.photos @bike_photos
json.dealers @bike.dealers