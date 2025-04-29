class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  belongs_to :account, polymorphic: true
  validates :account_type, inclusion: { in: %w[Teacher Admin Family] }

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
