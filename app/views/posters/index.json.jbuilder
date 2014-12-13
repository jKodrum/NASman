json.array!(@posters) do |poster|
  json.extract! poster, :id, :title, :content
  json.url poster_url(poster, format: :json)
end
