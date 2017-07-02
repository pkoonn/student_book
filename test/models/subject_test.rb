# == Schema Information
#
# Table name: subjects
#
#  id           :integer          not null, primary key
#  teacher_id   :integer
#  classroom_id :integer
#  timetable    :integer          default([]), not null, is an Array
#  name         :string           not null
#  order        :integer          default([]), not null, is an Array
#  year         :integer          not null
#  semester     :integer          not null
#  day_of_week  :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
