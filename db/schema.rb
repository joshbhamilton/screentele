# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100822080227) do

  create_table "LISTINGS", :id => false, :force => true do |t|
    t.string "tvdate",    :limit => 10
    t.string "time",      :limit => 4
    t.string "title_id",  :limit => 18
    t.text   "tvchannel"
  end

  create_table "mlists", :force => true do |t|
    t.integer  "title_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.integer  "title_id"
    t.text     "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "director"
    t.text     "plot"
    t.integer  "year"
    t.string   "poster"
  end

  create_table "screenings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "title_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
