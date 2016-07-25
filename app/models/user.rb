class User < ApplicationRecord
  validates :first_name, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 2 }
  validates :phone, :length => { :maximum => 10 }
  validates :email, confirmation: true, :uniqueness => true

  validates :password, presence: true, length: {minimum: 7, maximum: 120,
    too_short: "Password too short. Minimum 7 characters."}, on: :create
  validates :password, length: {minimum: 7, maximum: 120,
    too_short: "Password too short. Minimum 7 characters."}, on: :update, allow_blank: true

  has_secure_password
#  has_many :comments
end
