json.array!(@brands) do |brand|
  json.id brand.id
  json.name brand.name
  json.photo brand.photo.to_s
  json.summary brand.summary
  json.url brand_url(brand, format: :json)
end
