
ActiveRecord::Schema[8.0].define(version: 2025_03_17_102829) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "capital"
    t.string "fun_fact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
