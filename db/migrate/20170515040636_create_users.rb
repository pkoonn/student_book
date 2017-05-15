class CreateUsers < ActiveRecord::Migration[5.0]

    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"

    def change
        create_table "users", force: :cascade do |t|
            t.string     "name",      null: false
            t.string     "kana",      null: false
            t.string     "number",    null: false       # 学籍番号 or 教師ナンバー
            t.string     "user_name", null: false       # ユーザー名 → メールアドレス
            t.string     "course_id", null: false       # コースへの外部キー
            t.string     "password",  null: false
            t.string     "type",      null: false       # Student or Teacher
            t.timestamps
        end
    end
end
