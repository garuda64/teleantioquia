class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :position
      t.string :nombre
      t.boolean :visible
      t.string :background
      t.string :label_color
      t.integer :width
      t.integer :height
      t.text :url

      t.timestamps null: false
    end
  end
end
