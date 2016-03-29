json.array!(@menus) do |menu|
  json.extract! menu, :id, :position, :nombre, :visible, :background, :label_color, :width, :height, :url
  json.url menu_url(menu, format: :json)
end
