class CreateRegularSchoolDays < ActiveRecord::Migration[5.0]
  def change
      create_table "regular_school_days", force: :cascade do |t|
        t.references :subject
        t.date       "hold_date" # ŠJÃ“ú
        t.timestamps
      end
  end
end
