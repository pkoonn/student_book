class CreateRegularSchoolDays < ActiveRecord::Migration[5.0]
  def change
    create_table :regular_school_days do |t|
      t.integer :subject_id
      t.date :hold_date

      t.timestamps
    end
  end
end
