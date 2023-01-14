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

ActiveRecord::Schema[7.0].define(version: 2023_01_12_125651) do
  create_table "event_names", force: :cascade do |t|
    t.string "name"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_places", force: :cascade do |t|
    t.string "name"
    t.integer "max_entry"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_times", force: :cascade do |t|
    t.integer "event_place_id"
    t.integer "event_name_id"
    t.datetime "entry_time"
    t.datetime "exit_time"
    t.integer "max_entry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_tickets", force: :cascade do |t|
    t.integer "sale_id"
    t.integer "ticket_id"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_id", "ticket_id"], name: "index_sale_tickets_on_sale_id_and_ticket_id", unique: true
    t.index ["sale_id"], name: "index_sale_tickets_on_sale_id"
    t.index ["ticket_id"], name: "index_sale_tickets_on_ticket_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "user_id"
    t.integer "staff_id"
    t.integer "status"
    t.datetime "status_datetime"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "event_time_id"
    t.string "name"
    t.integer "price"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "tel"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
