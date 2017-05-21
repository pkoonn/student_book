class CreateAttendances < ActiveRecord::Migration[5.0]
    def change
        create_table "attendances", force: :cascade do |t|
            t.references :user
            t.references :subject
            t.timestamps
        end
    end
end
