class CreateRegularSchoolDays < ActiveRecord::Migration[5.0]
  def change
      create_table "regular_school_days", force: :cascade do |t|
        t.references :subject
        t.date       "hold_date" # �J�Ó�
        t.timestamps
      end
  end
end
