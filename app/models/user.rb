class User < ApplicationRecord
  validates :first_name, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 2 }
  validates :phone, :length => { :maximum => 14 }
  validates :email, confirmation: true, :uniqueness => true

  validates :password, presence: true, length: {minimum: 7, maximum: 120,
    too_short: "Password too short. Minimum 7 characters."}, on: :create
  validates :password, length: {minimum: 7, maximum: 120,
    too_short: "Password too short. Minimum 7 characters."}, on: :update, allow_blank: true

  scope :mothers, -> { where(mother: true) }
  has_secure_password
  has_many :comments
  # accepts_nested_attributes_for: :comment

  def remaining_trimesters
     case trimester
     when 3
       [3]
     when 2
       [2, 3]
     else
       [1, 2, 3]
     end 
  end
end
