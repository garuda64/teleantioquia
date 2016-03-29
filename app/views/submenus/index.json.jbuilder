json.array!(@submenus) do |submenu|
  json.extract! submenu, :id, :menus_id, :visible, :nombre, :background, :label_color, :url
  json.url submenu_url(submenu, format: :json)
end
