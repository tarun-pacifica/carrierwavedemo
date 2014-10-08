json.array!(@art_galleries) do |art_gallery|
  json.extract! art_gallery, :id, :name, :location, :avatar
  json.url art_gallery_url(art_gallery, format: :json)
end
