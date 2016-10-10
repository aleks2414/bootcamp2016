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

ActiveRecord::Schema.define(version: 20161008041642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fifth_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "fourth_test_id"
    t.integer  "problem2"
    t.integer  "cliente2"
    t.integer  "propuesta2"
    t.integer  "ventajas2"
    t.integer  "monetizacion2"
    t.integer  "comunicacion2"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "fifth_reviews", ["fourth_test_id"], name: "index_fifth_reviews_on_fourth_test_id", using: :btree
  add_index "fifth_reviews", ["user_id"], name: "index_fifth_reviews_on_user_id", using: :btree

  create_table "first_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "first_test_id"
    t.integer  "info1"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "first_reviews", ["first_test_id"], name: "index_first_reviews_on_first_test_id", using: :btree
  add_index "first_reviews", ["user_id"], name: "index_first_reviews_on_user_id", using: :btree

  create_table "first_tests", force: :cascade do |t|
    t.string   "info1"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "first_tests", ["user_id"], name: "index_first_tests_on_user_id", using: :btree

  create_table "fourth_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "fourth_test_id"
    t.integer  "video"
    t.integer  "likes2"
    t.integer  "aprendizaje2"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "fourth_reviews", ["fourth_test_id"], name: "index_fourth_reviews_on_fourth_test_id", using: :btree
  add_index "fourth_reviews", ["user_id"], name: "index_fourth_reviews_on_user_id", using: :btree

  create_table "fourth_tests", force: :cascade do |t|
    t.string   "video"
    t.integer  "likes2"
    t.string   "aprendizajes2"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "fourth_tests", ["user_id"], name: "index_fourth_tests_on_user_id", using: :btree

  create_table "second_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "second_test_id"
    t.integer  "problema1"
    t.integer  "cliente1"
    t.integer  "alternativa1"
    t.integer  "solucion1"
    t.integer  "ventajas1"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "second_reviews", ["second_test_id"], name: "index_second_reviews_on_second_test_id", using: :btree
  add_index "second_reviews", ["user_id"], name: "index_second_reviews_on_user_id", using: :btree

  create_table "second_tests", force: :cascade do |t|
    t.string   "boceto"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "second_tests", ["user_id"], name: "index_second_tests_on_user_id", using: :btree

  create_table "sixth_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "fourth_test_id"
    t.integer  "problem3"
    t.integer  "cliente3"
    t.integer  "propuesta3"
    t.integer  "ventajas3"
    t.integer  "monetizacion3"
    t.integer  "comunicacion3"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "sixth_reviews", ["fourth_test_id"], name: "index_sixth_reviews_on_fourth_test_id", using: :btree
  add_index "sixth_reviews", ["user_id"], name: "index_sixth_reviews_on_user_id", using: :btree

  create_table "third_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "third_test_id"
    t.integer  "info2"
    t.integer  "likes1"
    t.integer  "aprendizaje1"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "third_reviews", ["third_test_id"], name: "index_third_reviews_on_third_test_id", using: :btree
  add_index "third_reviews", ["user_id"], name: "index_third_reviews_on_user_id", using: :btree

  create_table "third_tests", force: :cascade do |t|
    t.string   "info2"
    t.integer  "likes1"
    t.string   "aprendizajes1"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "third_tests", ["user_id"], name: "index_third_tests_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
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
    t.boolean  "admin",                  default: false
    t.integer  "team"
    t.string   "inte1"
    t.integer  "cuenta1"
    t.string   "inte2"
    t.integer  "cuenta2"
    t.string   "inte3"
    t.integer  "cuenta3"
    t.string   "inte4"
    t.integer  "cuenta4"
    t.string   "inte5"
    t.integer  "cuenta5"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "fifth_reviews", "fourth_tests"
  add_foreign_key "fifth_reviews", "users"
  add_foreign_key "first_reviews", "first_tests"
  add_foreign_key "first_reviews", "users"
  add_foreign_key "first_tests", "users"
  add_foreign_key "fourth_reviews", "fourth_tests"
  add_foreign_key "fourth_reviews", "users"
  add_foreign_key "fourth_tests", "users"
  add_foreign_key "second_reviews", "second_tests"
  add_foreign_key "second_reviews", "users"
  add_foreign_key "second_tests", "users"
  add_foreign_key "sixth_reviews", "fourth_tests"
  add_foreign_key "sixth_reviews", "users"
  add_foreign_key "third_reviews", "third_tests"
  add_foreign_key "third_reviews", "users"
  add_foreign_key "third_tests", "users"
end
