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

ActiveRecord::Schema.define(version: 20160902184208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodation_types", force: true do |t|
    t.string   "descripcion"
    t.boolean  "activo",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accomodations", force: true do |t|
    t.text     "titulo"
    t.text     "descripcion"
    t.text     "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_hospedajes", force: true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "estado"
  end

end
