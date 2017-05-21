class CreateUsers < ActiveRecord::Migration[5.0]
    def change
        create_table :users, primary_key: "user_id" do |t|
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
