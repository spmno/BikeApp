json.(@brand, :id, :name, :photo, :summary, :created_at, :updated_at)
json.id @brand.id
json.name @brand.name
json.photo @brand.photo.to_s
json.summary @brand.summary
json.bikes @brand.bikes