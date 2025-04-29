class TeacherAssignment < ApplicationRecord
  belongs_to :account_teacher
  belongs_to :course
end
