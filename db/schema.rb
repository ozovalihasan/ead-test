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

ActiveRecord::Schema[7.0].define(version: 2023_10_10_201641) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_histories", force: :cascade do |t|
    t.integer "credit_rating"
    t.datetime "access_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id", null: false
    t.index ["account_id"], name: "index_account_histories_on_account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "supplier_id", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postable_type", null: false
    t.bigint "postable_id", null: false
    t.string "imageable_type", null: false
    t.bigint "imageable_id", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable"
    t.index ["postable_type", "postable_id"], name: "index_pictures_on_postable"
  end

  create_table "postcards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "fan_id", null: false
    t.bigint "famous_person_id", null: false
    t.index ["famous_person_id"], name: "index_relations_on_famous_person_id"
    t.index ["fan_id"], name: "index_relations_on_fan_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "type"
    t.string "full_name"
    t.string "branch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicians", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "supervisor_type"
    t.bigint "supervisor_id"
    t.string "teachable_type"
    t.bigint "teachable_id"
    t.bigint "assistant_professor_id"
    t.bigint "manager_id"
    t.string "customer_representative_type"
    t.bigint "customer_representative_id"
    t.index ["assistant_professor_id"], name: "index_users_on_assistant_professor_id"
    t.index ["customer_representative_type", "customer_representative_id"], name: "index_users_on_customer_representative"
    t.index ["manager_id"], name: "index_users_on_manager_id"
    t.index ["supervisor_type", "supervisor_id"], name: "index_users_on_supervisor"
    t.index ["teachable_type", "teachable_id"], name: "index_users_on_teachable"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "drivable_type"
    t.bigint "drivable_id"
    t.bigint "technician_id"
    t.index ["drivable_type", "drivable_id"], name: "index_vehicles_on_drivable"
    t.index ["technician_id"], name: "index_vehicles_on_technician_id"
  end

  add_foreign_key "account_histories", "accounts"
  add_foreign_key "accounts", "suppliers"
  add_foreign_key "relations", "users", column: "famous_person_id"
  add_foreign_key "relations", "users", column: "fan_id"
  add_foreign_key "users", "teachers", column: "assistant_professor_id"
  add_foreign_key "users", "users", column: "manager_id"
  add_foreign_key "vehicles", "technicians"
end
