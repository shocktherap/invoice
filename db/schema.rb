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

ActiveRecord::Schema.define(version: 20140420164847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: true do |t|
    t.string   "owner_type"
    t.integer  "owner_id"
    t.string   "type"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "authentications", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.string   "token_secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "billings", force: true do |t|
    t.integer  "number"
    t.integer  "customer_id"
    t.date     "published"
    t.date     "expired"
    t.string   "purchase_order"
    t.text     "note"
    t.integer  "discount"
    t.integer  "tax"
    t.integer  "delivery_service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.integer  "postalcode"
    t.string   "sector"
    t.string   "phone_number"
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.integer  "postal_code"
    t.string   "phone_number"
    t.string   "owner"
    t.string   "email"
    t.string   "caretaker"
    t.string   "caretaker_email"
    t.string   "caretaker_phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "billing_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "discount"
    t.float    "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "code"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "price"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "brand"
  end

  create_table "tickets", force: true do |t|
    t.integer  "billing_id"
    t.string   "from"
    t.string   "destination"
    t.datetime "departure"
    t.datetime "arrive"
    t.datetime "class"
    t.string   "passenger"
    t.integer  "quantity"
    t.integer  "discount"
    t.float    "price"
    t.float    "total"
  end

  create_table "user_billings", force: true do |t|
    t.integer  "user_id"
    t.integer  "billing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
