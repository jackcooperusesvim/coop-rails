class Student < ApplicationRecord
  belongs_to :account_family

  has_many :course_registrations
  has_many :courses, through: :course_registrations
end
