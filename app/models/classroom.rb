# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  seat_rule  :json             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classroom < ApplicationRecord
end
