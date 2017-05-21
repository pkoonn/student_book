class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
      create_table "subjects", force: :cascade do |t|
        t.references :user                                             # 先生に紐付ける
        t.references :classroom
        t.integer :timetables,   null: false, array: true, default: [] # 授業開講日一覧
        t.string  "name",        null: false
        t.integer "order",       null: false, array: true, default: [] # N時限目
        t.integer "year",        null: false                           # 開講年度
        t.integer "semester",    null: false                           # 0: 前期, 1: 後期, 2: 通年
        t.integer "day_of_week", null: false
        t.timestamps
      end

  end
end
