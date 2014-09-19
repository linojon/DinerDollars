require 'faker'

#Create enrollments
15.times do 
  customer = User.new(
  name:     Faker::Name.name,
  email:    Faker::Internet.email,
  password: Faker::Lorem.characters(10)
  )
  customer.save 
end
customers = User.all

15.times do
  enrollment = Enrollment.new(
  shop_id:  Faker::Number.number(2),
  customer_id:  Faker::Number.number(2),
  points:  Faker::Number.number(3)
  )
enrollment.save
end
enrollment = Enrollment.all

enrollment = Enrollment.new(
  shop_id:  '1',
  customer_id: '2',
  points:       '150'
  )
enrollment.save

enrollment = Enrollment.new(
  shop_id:  '3',
  customer_id: '2',
  points:       '78'
  )
enrollment.save

customer = User.new(
  name:     'Kerry',
  email:    'kerry@example.com',
  password: 'helloworld',
  type:     'customer'
)
customer.save

owner = User.new(
  name:     'Owner Mex',
  email:    'owner@example.com',
  password: 'helloworld',
  type:     'owner'
)
owner.save

customer = User.new(
  name:     'Debbie',
  email:    'customer@example.com',
  password: 'helloworld',
  type:     'customer'
)
customer.save