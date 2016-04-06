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

ActiveRecord::Schema.define(version: 20160402041654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string  "name"
    t.string  "image"
    t.integer "movie_id"
  end

  add_index "actors", ["movie_id"], name: "index_actors_on_movie_id", using: :btree

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "movies", force: :cascade do |t|
    t.string  "title"
    t.string  "image"
    t.string  "synopsis"
    t.string  "runtime"
    t.string  "budget"
    t.string  "opening"
    t.string  "video_url"
    t.integer "publisher_id"
    t.integer "director_id"
  end

  add_index "movies", ["director_id"], name: "index_movies_on_director_id", using: :btree
  add_index "movies", ["publisher_id"], name: "index_movies_on_publisher_id", using: :btree

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  add_foreign_key "actors", "movies"
  add_foreign_key "movies", "directors"
  add_foreign_key "movies", "publishers"
end
