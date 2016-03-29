# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160328191219) do

  create_table "homes", force: :cascade do |t|
    t.string   "background"
    t.string   "label_color"
    t.string   "font"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "position"
    t.string   "nombre"
    t.boolean  "visible"
    t.string   "background"
    t.string   "label_color"
    t.integer  "width"
    t.integer  "height"
    t.text     "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "submenus", force: :cascade do |t|
    t.integer  "menus_id"
    t.boolean  "visible"
    t.string   "nombre"
    t.string   "background"
    t.string   "label_color"
    t.text     "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "submenus", ["menus_id"], name: "index_submenus_on_menus_id"

end
