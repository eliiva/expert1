ActiveRecord::Schema.define(version: 20170118153009) do

  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.string   "file"
    t.float    "ave_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.integer  "qty_items"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_token"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

  create_table "values", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "image_id"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
