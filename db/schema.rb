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

ActiveRecord::Schema.define(version: 2019_03_19_143719) do

  create_table "paths", force: :cascade do |t|
    t.integer "caminho"
    t.string "opcao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scene_id"
    t.index ["scene_id"], name: "index_paths_on_scene_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.text "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "story_id"
    t.index ["story_id"], name: "index_scenes_on_story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.text "introducao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "titulo"
  end

end
