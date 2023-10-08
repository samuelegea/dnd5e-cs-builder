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

ActiveRecord::Schema[7.1].define(version: 2023_10_08_001118) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "armor_shields", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "description", default: "", null: false
    t.integer "base_ac", default: 0, null: false
    t.integer "ac_modifier"
    t.integer "cap_ac_modifier"
    t.integer "strength"
    t.boolean "stealth_disadvantage", default: false, null: false
    t.integer "weight", default: 0, null: false
    t.integer "cost_cp", default: 0, null: false
    t.integer "don_unit", default: 0, null: false
    t.integer "don_amount", default: 0, null: false
    t.integer "doff_unit", default: 0, null: false
    t.integer "doff_amount", default: 0, null: false
    t.integer "category", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creature_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feature_owners", force: :cascade do |t|
    t.bigint "feature_id", null: false
    t.string "owner_type", null: false
    t.bigint "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_feature_owners_on_feature_id"
    t.index ["owner_type", "owner_id"], name: "index_feature_owners_on_owner"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_speakers", force: :cascade do |t|
    t.bigint "language_id", null: false
    t.string "speaker_type"
    t.bigint "speaker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_language_speakers_on_language_id"
    t.index ["speaker_type", "speaker_id"], name: "index_language_speakers_on_speaker"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "size"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "age", default: "", null: false
    t.string "alignment", default: "", null: false
    t.jsonb "asi", default: {}, null: false
    t.bigint "super_race_id"
    t.index ["super_race_id"], name: "index_races_on_super_race_id"
  end

  add_foreign_key "feature_owners", "features"
  add_foreign_key "language_speakers", "languages"
  add_foreign_key "races", "races", column: "super_race_id"
end
