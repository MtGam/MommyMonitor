class User < ApplicationRecord
  validates :email, confirmation: true
  validates :password, length: {minimum: 7, too_short: "Password too short. Minimum 7 characters."}

  has_secure_password
  has_many :comments
end
