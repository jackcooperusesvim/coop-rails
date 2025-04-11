class Account::Family < ApplicationRecord
  has_one :user, as: :account
end
