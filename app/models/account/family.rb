class Account::Family < ApplicationRecord
  has_one :user, as: :account

  has_many :students, dependent: :destroy
end
