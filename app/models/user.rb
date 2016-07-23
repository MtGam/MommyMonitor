class User < ApplicationRecord
  validates :first_name, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 2 }
  validates :phone, :length => { :maximum => 10 }
  validates :email, confirmation: true, :uniqueness => true
  validates :password, length: {minimum: 7, too_short: "Password too short. Minimum 7 characters."}

  has_secure_password
  has_many :comments
end
