class AddColumnToAttendances < ActiveRecord::Migration[5.0]
  def change
    add_column :attendances, :course, :integer
    add_column :attendances, :status, :string
  end
end
