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

ActiveRecord::Schema.define(version: 20141022184108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: true do |t|
    t.text     "name"
    t.integer  "movies_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genres", ["name"], name: "index_genres_on_name", using: :btree

  create_table "movies", force: true do |t|
    t.string   "name"
    t.integer  "movie_id"
    t.text     "cover_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movies", ["name"], name: "index_movies_on_name", using: :btree

  create_table "movies_genres", id: false, force: true do |t|
    t.integer "movie_id"
    t.integer "genre_id"
  end

  add_index "movies_genres", ["genre_id"], name: "index_movies_genres_on_genre_id", using: :btree
  add_index "movies_genres", ["movie_id"], name: "index_movies_genres_on_movie_id", using: :btree

end
