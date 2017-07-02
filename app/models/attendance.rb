# == Schema Information
#
# Table name: attendances
#
#  id         :integer          not null, primary key
#  student_id :integer
#  subject_id :integer
#  count      :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Attendance < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  def late?
    status == 'late'
  end

  def absence?
    status == 'absence'
  end
end
