class CreateCourses < ActiveRecord::Migration[5.0]
    def change
        create_table "courses", force: :cascade do |t|
            t.string "name", null: false
            t.timestamps
            t.timestamps
        end
    end
end
