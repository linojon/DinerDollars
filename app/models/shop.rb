class Shop < ActiveRecord::Base
  has_many :enrollments
  has_many :customers, through: :enrollments
  belongs_to :owner, class_name: 'User'

  # notes:fixme this is a test
end
