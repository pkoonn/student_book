class AddColunmToNotifications < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :subject_id, :integer
  end
end
