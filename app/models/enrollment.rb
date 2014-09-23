class Enrollment < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user, foreign_key: 'customer_id'

end
