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

ActiveRecord::Schema.define(version: 20140410130826) do

  create_table "business_model_canvases", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channels", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "channels", ["business_model_canvase_id"], name: "index_channels_on_business_model_canvase_id", using: :btree

  create_table "cost_structures", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cost_structures", ["business_model_canvase_id"], name: "index_cost_structures_on_business_model_canvase_id", using: :btree

  create_table "customer_relationships", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_relationships", ["business_model_canvase_id"], name: "index_customer_relationships_on_business_model_canvase_id", using: :btree

  create_table "customer_segments", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_segments", ["business_model_canvase_id"], name: "index_customer_segments_on_business_model_canvase_id", using: :btree

  create_table "key_activities", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "key_activities", ["business_model_canvase_id"], name: "index_key_activities_on_business_model_canvase_id", using: :btree

  create_table "key_partnerships", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "key_partnerships", ["business_model_canvase_id"], name: "index_key_partnerships_on_business_model_canvase_id", using: :btree

  create_table "key_resources", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "key_resources", ["business_model_canvase_id"], name: "index_key_resources_on_business_model_canvase_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revenue_streams", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "revenue_streams", ["business_model_canvase_id"], name: "index_revenue_streams_on_business_model_canvase_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
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

  create_table "value_propositions", force: true do |t|
    t.integer  "business_model_canvase_id"
    t.string   "name"
    t.text     "description"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "value_propositions", ["business_model_canvase_id"], name: "index_value_propositions_on_business_model_canvase_id", using: :btree

end
