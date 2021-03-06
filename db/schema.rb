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

ActiveRecord::Schema.define(:version => 20131229082949) do

  create_table "buttons", :force => true do |t|
    t.string   "background"
    t.string   "border"
    t.string   "color"
    t.string   "borderadius"
    t.string   "bordercolor"
    t.string   "padding"
    t.string   "text"
    t.string   "link"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  add_index "buttons", ["user_id"], :name => "index_buttons_on_user_id"

  create_table "carousals", :force => true do |t|
    t.string   "image"
    t.string   "image2"
    t.string   "image3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dropdowns", :force => true do |t|
    t.string   "title"
    t.string   "value1"
    t.string   "value2"
    t.string   "value3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "headers", :force => true do |t|
    t.string   "img"
    t.string   "text"
    t.string   "extra"
    t.string   "extram"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mains", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "modals", :force => true do |t|
    t.string   "header"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scaffolds", :force => true do |t|
    t.string   "form"
    t.string   "textbox"
    t.string   "textarea"
    t.string   "submit"
    t.string   "dropdown"
    t.string   "value"
    t.string   "radio"
    t.string   "check"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "textmarquees", :force => true do |t|
    t.text     "text"
    t.string   "background"
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "first_name",             :default => "", :null => false
    t.string   "last_name",              :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
