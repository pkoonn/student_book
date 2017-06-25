# == Schema Information
#
# Table name: regular_school_days
#
#  id         :integer          not null, primary key
#  subject_id :integer
#  hold_date  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RegularSchoolDay < ApplicationRecord
  belongs_to :subject
end
