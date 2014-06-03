ActiveRecord::Schema.define(version: 20140603212427) do

  enable_extension "plpgsql"

  create_table "dogs", force: true do |t|
    t.string "name"
    t.string "breed"
  end

end
