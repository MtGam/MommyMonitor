class User < ApplicationRecord
  validates :first_name, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 2 }
  validates :phone, :length => { :maximum => 10 }
  validates :email, confirmation: true
  validates :password, length: {minimum: 7, too_short: "Password too short. Minimum 7 characters."}

  validates_inclusion_of :tri_1, in: [true, false]
  validates_inclusion_of :tri_2, in: [true, false]
  validates_inclusion_of :tri_3, in: [true, false]

  has_secure_password
  has_many :comments
end
