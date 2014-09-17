class Shop < ActiveRecord::Base
  has_many :enrollments
  has_many :customers, through: :enrollments
  belongs_to :owner
end
