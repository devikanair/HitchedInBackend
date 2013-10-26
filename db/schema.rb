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

ActiveRecord::Schema.define(:version => 20131026163905) do

  create_table "changetypes", :force => true do |t|
    t.string   "random"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mappings", :force => true do |t|
    t.string   "bluetooth"
    t.string   "linkedinprofile"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "maptolinkedins", :force => true do |t|
    t.string   "bluetooth"
    t.string   "linkedinprofile"
    t.string   "name"
    t.string   "profiletitle"
    t.string   "picurl"
    t.string   "skills"
    t.string   "comment"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
