# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  name                   :string           not null
#  kana                   :string           not null
#  number                 :string           not null
#  user_name              :string           not null
#  course_id              :string           not null
#  type                   :string           not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:login]
  attr_accessor :login
  before_save :set_type
  has_many :user_subjects
  has_many :subjects, through: :user_subjects

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    if login
      find_by(user_name: login)
    else
      find_by(conditions)
    end
  end

  def teacher?
    type == "Teacher"
  end

  def student?
    type == "Student"
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end

  private

  def set_type
    self.type ||= 'Student'
  end
end
