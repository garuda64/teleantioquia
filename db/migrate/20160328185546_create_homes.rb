class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :background
      t.string :label_color
      t.string :font

      t.timestamps null: false
    end
  end
end
