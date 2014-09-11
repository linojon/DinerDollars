json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :kind, :location, :codename, :codenumber
  json.url shop_url(shop, format: :json)
end
