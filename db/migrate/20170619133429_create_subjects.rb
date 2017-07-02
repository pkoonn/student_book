class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.integer :teacher_id
      t.integer :classroom_id
      t.integer :timetable, null: false, array: true, default: []
      t.string :name, null: false
      t.integer :order, null: false, array: true, default: []
      t.integer :year, null: false
      t.integer :semester, null: false
      t.integer :day_of_week, null: false

      t.timestamps
    end
  end
end
