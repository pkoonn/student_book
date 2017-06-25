class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :body, null: false
      t.integer :notificationable_id, null: false
      t.string :notificationable_type, null: false

      t.timestamps
    end
  end
end
