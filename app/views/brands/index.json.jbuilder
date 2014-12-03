json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :photo, :summary
  json.url brand_url(brand, format: :json)
end
