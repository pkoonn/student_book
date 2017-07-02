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

class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :student_subjects
  has_many :students, through: :student_subjects
  has_many :attendances

  after_save :create_attendances

  def attendance_count
    semester == 0 ? 15 : 30
  end

  private

  def create_attendances
    students.each do |student|
      next if student.attendances.present?
      attendance_count.times do |i|
        attendances.create(student_id: student.id, count: i + 1)
      end
    end
  end
end
