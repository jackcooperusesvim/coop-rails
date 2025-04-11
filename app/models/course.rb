class Course < ApplicationRecord
  # belongs_to :semester

  has_many :teacher_assignments
  has_many :account_teachers, through: :teacher_assignments

  has_many :course_registrations
  has_many :students, through: :course_registrations
end
