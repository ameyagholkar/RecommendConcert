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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111208145241) do

  create_table "artists", :force => true do |t|
    t.string   "name",                      :null => false
    t.string   "genre",                     :null => false
    t.string   "image"
    t.integer  "rating",     :default => 5, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concerts", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "artist_id"
    t.string   "start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "min_price"
    t.integer  "max_price"
  end

  create_table "liked_genres", :force => true do |t|
    t.integer  "user_id"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recommendations", :force => true do |t|
    t.integer  "concert_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.string   "explanation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",   :default => "", :null => false
    t.string   "password",                   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_artist_ratings", :force => true do |t|
    t.integer  "artist_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
