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

ActiveRecord::Schema.define(:version => 20131211150806) do

  create_table "abouts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string "name"
  end

  create_table "homeposts", :force => true do |t|
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.string   "url4"
    t.string   "title1"
    t.string   "title2"
    t.string   "title3"
    t.string   "title4"
    t.text     "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "works", :force => true do |t|
    t.string   "title"
    t.string   "about"
    t.string   "client"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "category_id"
    t.string   "home_url"
    t.string   "homepageinfo"
    t.boolean  "posthome"
    t.string   "large_url"
    t.string   "small_url"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
