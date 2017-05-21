class CreateNotifications < ActiveRecord::Migration[5.0]
    def change
        create_table "notifications", force: :cascade do |t|
            t.references :user
            t.string  "title", null: false
            t.string  "body", null: false
            t.integer "notificationable_id", null: false   # 授業 or コースのID
            t.string "notificationable_type", null: false  # 授業 or コースのClass名
            t.timestamps
        end
    end
end
