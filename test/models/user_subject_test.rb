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

require 'test_helper'

class UserSubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
