class Enrollment < ActiveRecord::Base
  belongs_to :shop
  belongs_to :customer
  has_many :points
end
