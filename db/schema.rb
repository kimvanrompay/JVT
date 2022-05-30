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

ActiveRecord::Schema[7.0].define(version: 2022_04_01_205322) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.string "month"
    t.string "start"
    t.string "company"
    t.string "job"
    t.string "type"
    t.integer "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "bedrijf"
    t.string "titel"
    t.string "keywords"
    t.string "h1"
    t.string "subh1"
    t.text "content"
    t.string "f1"
    t.string "f2"
    t.string "f3"
    t.string "p1"
    t.string "p2"
    t.string "p3"
    t.string "a1"
    t.string "a2"
    t.string "a3"
    t.string "m1"
    t.string "m2"
    t.string "m3"
    t.string "q1"
    t.string "q2"
    t.string "q3"
    t.string "sector"
    t.string "functie"
    t.integer "postcode"
    t.string "stad"
    t.string "opleiding"
    t.integer "ervaring"
    t.string "talen"
    t.string "utm"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
