# == Schema Information
#
# Table name: notifications
#
#  id                    :integer          not null, primary key
#  user_id               :integer
#  title                 :string           not null
#  body                  :string           not null
#  notificationable_id   :integer          not null
#  notificationable_type :string           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Notification < ApplicationRecord
  belongs_to :user
end
