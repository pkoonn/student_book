# == Schema Information
#
# Table name: user_subjects
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSubject < ApplicationRecord
  belongs_to :user
  belongs_to :subject
end
