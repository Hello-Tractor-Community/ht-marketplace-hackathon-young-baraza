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

ActiveRecord::Schema[7.1].define(version: 2024_11_21_101324) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "quantity"
    t.float "total"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id", null: false
    t.bigint "user_id", null: false
    t.bigint "crop_id", null: false
    t.index ["crop_id"], name: "index_cart_items_on_crop_id"
    t.index ["product_id"], name: "index_cart_items_on_product_id"
    t.index ["user_id"], name: "index_cart_items_on_user_id"
  end

  create_table "crops", force: :cascade do |t|
    t.string "crop_name"
    t.integer "crop_age"
    t.float "acreage"
    t.integer "trees_0_to_3"
    t.integer "trees_4_to_7"
    t.integer "trees_7_plus"
    t.string "farm_plot_no"
    t.string "variety"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_crops_on_user_id"
  end

  create_table "issues", force: :cascade do |t|
    t.text "description"
    t.string "issue_type"
    t.datetime "time"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "crop_id", null: false
    t.bigint "user_id", null: false
    t.bigint "farm_specialist_id", null: false
    t.index ["crop_id"], name: "index_issues_on_crop_id"
    t.index ["farm_specialist_id"], name: "index_issues_on_farm_specialist_id"
    t.index ["user_id"], name: "index_issues_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "crop_id", null: false
    t.index ["crop_id"], name: "index_products_on_crop_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "safety_procedures", force: :cascade do |t|
    t.text "special_hazards"
    t.text "status_motive_fluid"
    t.boolean "evacuated_unit"
    t.boolean "charged_unit"
    t.text "status_brine_venting"
    t.boolean "venting"
    t.boolean "draining_charged"
    t.text "status_stored_energy"
    t.text "work_lead_coordinator"
    t.text "title"
    t.boolean "contractors_safety_orientation"
    t.text "emergency_action_plan"
    t.text "injury_notification_process"
    t.text "first_aid_locations"
    t.text "aed_kits_locations"
    t.text "burn_packs_locations"
    t.text "fire_extinguishers_locations"
    t.text "safety_showers_locations"
    t.text "eye_wash_locations"
    t.text "drinking_water_locations"
    t.text "ppe"
    t.text "chemical_safety"
    t.text "environmental_conditions"
    t.text "safety_procedures_permits"
    t.text "vehicles_equipment"
    t.text "shipping_loads"
    t.text "plant_startup_items"
    t.text "miscellaneous"
    t.text "safe_start_certs"
    t.text "shift_supervisor_name"
    t.text "pjsm_leader_name"
    t.text "stop_work_authority_comments"
    t.time "permit_time"
    t.text "permit_number"
    t.date "permit_date"
    t.integer "group_number"
    t.text "company"
    t.text "contractor_coord"
    t.text "coord_employee"
    t.text "contact_phone"
    t.text "tools_equipment"
    t.text "atmospheric_hazards"
    t.boolean "gas_monitoring_required"
    t.text "gas_detector_id"
    t.boolean "bump_test_passed"
    t.decimal "o2_percentage", precision: 5, scale: 2
    t.decimal "toxic_ppm", precision: 10, scale: 2
    t.decimal "lel_percentage", precision: 5, scale: 2
    t.text "safety_hazards"
    t.text "safety_precautions"
    t.text "special_ppe_required"
    t.text "permits_plans_required"
    t.text "pjsm"
    t.text "jha"
    t.date "safe_work_issued_date"
    t.time "safe_work_issued_time"
    t.text "work_lead_signature"
    t.text "authorizer_signature"
    t.boolean "equipment_operable"
    t.text "job_status"
    t.boolean "work_area_cleaned"
    t.text "additional_comments"
    t.text "final_work_lead_signature"
    t.text "final_authorizer_signature"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "admin_id"
    t.index ["admin_id"], name: "index_safety_procedures_on_admin_id"
    t.index ["user_id"], name: "index_safety_procedures_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "role", default: 0
    t.string "location", null: false
    t.string "national_id", null: false
    t.string "phone_number", null: false
    t.string "reg_number", null: false
    t.string "com_email", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cart_items", "crops"
  add_foreign_key "cart_items", "products"
  add_foreign_key "cart_items", "users"
  add_foreign_key "crops", "users"
  add_foreign_key "issues", "crops"
  add_foreign_key "issues", "users"
  add_foreign_key "issues", "users", column: "farm_specialist_id"
  add_foreign_key "products", "crops"
  add_foreign_key "products", "users"
  add_foreign_key "safety_procedures", "users"
  add_foreign_key "safety_procedures", "users", column: "admin_id"
end
