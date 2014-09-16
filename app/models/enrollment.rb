class Enrollment < ActiveRecord::Base
  belongs to :shop
  belongs to :customer
end
