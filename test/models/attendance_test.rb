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

require 'test_helper'

class AttendanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
