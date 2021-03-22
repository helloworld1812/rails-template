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

ActiveRecord::Schema.define(version: 2021_03_22_071131) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.uuid "uuid", null: false
    t.string "name"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uuid"], name: "index_companies_on_uuid"
  end

  create_table "employees", force: :cascade do |t|
    t.uuid "uuid", null: false
    t.bigint "company_id"
    t.bigint "hr_id"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["hr_id"], name: "index_employees_on_hr_id"
    t.index ["uuid"], name: "index_employees_on_uuid"
  end

  create_table "hrs", force: :cascade do |t|
    t.uuid "uuid", null: false
    t.bigint "company_id"
    t.string "phone"
    t.string "name"
    t.string "email"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_hrs_on_company_id"
    t.index ["uuid"], name: "index_hrs_on_uuid"
  end
end
