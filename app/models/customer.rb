class Customer < User
  has_many :enrollments
  has_many :shops, through: :enrollments
end