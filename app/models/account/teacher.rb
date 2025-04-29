class Account::Teacher < ApplicationRecord
  has_one :users, as: :account

  has_many :teacher_assignments
  has_many :courses, through: :teacher_assignments
end
