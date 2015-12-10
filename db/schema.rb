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

ActiveRecord::Schema.define(version: 20151203232254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "couches", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "imageurl"
    t.string   "localidad"
    t.string   "capacidad"
    t.integer  "user_id"
    t.integer  "tipocouch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counts", force: true do |t|
    t.string   "dni"
    t.string   "numtarj"
    t.string   "venc"
    t.string   "cod"
    t.string   "fechavenc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reserves", force: true do |t|
    t.string   "name"
    t.string   "fechaini"
    t.string   "fechafin"
    t.integer  "user_id"
    t.boolean  "confirmada"
    t.integer  "couch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipocouches", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "premium",                default: false
    t.boolean  "admin",                  default: false
    t.string   "name",                   default: "",    null: false
    t.string   "lastname",               default: "",    null: false
    t.string   "dni",                    default: "",    null: false
    t.string   "provincia",              default: "",    null: false
    t.string   "localidad",              default: "",    null: false
    t.string   "genero",                 default: "",    null: false
    t.integer  "precio_premium"
    t.datetime "fecha_premium"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
