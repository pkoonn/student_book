class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.integer :student_id
      t.integer :subject_id
      t.integer :count
      t.string :status

      t.timestamps
    end
  end
end
