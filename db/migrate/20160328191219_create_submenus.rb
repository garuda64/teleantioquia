class CreateSubmenus < ActiveRecord::Migration
  def change
    create_table :submenus do |t|
      t.references :menus, index: true, foreign_key: true
      t.boolean :visible
      t.string :nombre
      t.string :background
      t.string :label_color
      t.text :url

      t.timestamps null: false
    end
  end
end
