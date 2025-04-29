class Account::Admin < ApplicationRecord
  has_one :user, as: :account
end
