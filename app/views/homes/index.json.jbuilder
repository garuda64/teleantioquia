json.array!(@homes) do |home|
  json.extract! home, :id, :background, :label_color, :font
  json.url home_url(home, format: :json)
end
