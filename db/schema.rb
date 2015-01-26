ActiveRecord::Schema.define(version: 20150126124124) do
  enable_extension "plpgsql"

  create_table "docs", force: :cascade do |t|
    t.text     "number"
    t.text     "link"
    t.date     "date_of_issue"
    t.text     "title"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
