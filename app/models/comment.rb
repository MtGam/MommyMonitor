class Comment < ApplicationRecord

 belongs_to :user, foreign_key: :mother_id
 belongs_to :user, foreign_key: :doctor_id
 belongs_to :user, foreign_key: :commenter_id

 validates :comment, presence: true, on: :create, allow_blank: false


end
