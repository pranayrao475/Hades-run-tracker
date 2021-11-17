# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_17_172031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boons", force: :cascade do |t|
    t.bigint "olympian_god_id", null: false
    t.string "boon_name"
    t.string "description"
    t.index ["olympian_god_id"], name: "index_boons_on_olympian_god_id"
  end

  create_table "chosen_boons", force: :cascade do |t|
    t.bigint "boon_id", null: false
    t.bigint "run_id", null: false
    t.index ["boon_id"], name: "index_chosen_boons_on_boon_id"
    t.index ["run_id"], name: "index_chosen_boons_on_run_id"
  end

  create_table "olympian_gods", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "image"
  end

  create_table "runs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cleared_levels"
    t.datetime "created_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "username"
  end

  add_foreign_key "boons", "olympian_gods"
  add_foreign_key "chosen_boons", "boons"
  add_foreign_key "chosen_boons", "runs"
end
