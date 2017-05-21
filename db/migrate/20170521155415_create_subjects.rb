class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
      create_table "subjects", force: :cascade do |t|
        t.references :user                                             # �搶�ɕR�t����
        t.references :classroom
        t.integer :timetables,   null: false, array: true, default: [] # ���ƊJ�u���ꗗ
        t.string  "name",        null: false
        t.integer "order",       null: false, array: true, default: [] # N������
        t.integer "year",        null: false                           # �J�u�N�x
        t.integer "semester",    null: false                           # 0: �O��, 1: ���, 2: �ʔN
        t.integer "day_of_week", null: false
        t.timestamps
      end

  end
end
