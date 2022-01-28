ActiveRecord::Schema.define(version: 2022_01_27_120730) do

  create_table "nearest_stations", force: :cascade do |t|
    t.string "line_name"
    t.string "name"
    t.integer "walking_time"
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_nearest_stations_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name", null: false
    t.integer "rent"
    t.string "address"
    t.integer "age"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "nearest_stations", "properties"
end
