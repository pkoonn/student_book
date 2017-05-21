class CreateClassrooms < ActiveRecord::Migration[5.0]
    def change
        create_table "classroom", force: :cascade do |t|
            t.string "name", null: false
            t.json   "seat_rule", default: {}, null: false
            t.timestamps
        end
    end
end
