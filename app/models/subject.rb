# == Schema Information
#
# Table name: subjects
#
#  id           :integer          not null, primary key
#  user_id      :integer
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

class Subject < ApplicationRecord
  belongs_to :user
  has_many :user_subjects
  has_many :subjects, through: :user_subjects
end
