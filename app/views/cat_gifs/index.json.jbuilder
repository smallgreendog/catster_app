json.array!(@cat_gifs) do |cat_gif|
  json.extract! cat_gif, :id, :title, :url, :score
  json.url cat_gif_url(cat_gif, format: :json)
end
