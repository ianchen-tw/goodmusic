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

ActiveRecord::Schema.define(version: 2018_07_24_164640) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.integer "song_id"
    t.integer "artist_id"
    t.integer "category_id"
    t.integer "music_genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
    t.index ["category_id"], name: "index_albums_on_category_id"
    t.index ["music_genre_id"], name: "index_albums_on_music_genre_id"
    t.index ["song_id"], name: "index_albums_on_song_id"
  end

  create_table "article_details", force: :cascade do |t|
    t.text "content"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_details_on_article_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title", limit: 30
    t.string "category", limit: 15
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brief"
    t.string "author", null: false
    t.string "recommender"
    t.text "url"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.date "born_date"
    t.integer "song_id"
    t.integer "album_id"
    t.integer "category_id"
    t.integer "music_genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_artists_on_album_id"
    t.index ["category_id"], name: "index_artists_on_category_id"
    t.index ["music_genre_id"], name: "index_artists_on_music_genre_id"
    t.index ["song_id"], name: "index_artists_on_song_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "value"
    t.integer "album_id"
    t.integer "songs_id"
    t.integer "artists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_categories_on_album_id"
    t.index ["artists_id"], name: "index_categories_on_artists_id"
    t.index ["songs_id"], name: "index_categories_on_songs_id"
  end

  create_table "music_genres", force: :cascade do |t|
    t.string "value"
    t.integer "album_id"
    t.integer "song_id"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_music_genres_on_album_id"
    t.index ["artist_id"], name: "index_music_genres_on_artist_id"
    t.index ["song_id"], name: "index_music_genres_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.integer "album_id"
    t.integer "artist_id"
    t.integer "category_id"
    t.integer "music_genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
    t.index ["category_id"], name: "index_songs_on_category_id"
    t.index ["music_genre_id"], name: "index_songs_on_music_genre_id"
  end

end
