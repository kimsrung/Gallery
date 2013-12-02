json.array!(@photos) do |photo|
  json.extract! photo, :name, :image, :location, :description
  json.url photo_url(photo, format: :json)
end
