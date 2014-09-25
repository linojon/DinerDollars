require 'faker'

#Create shops
5.times do
  Shop.create name: Faker::Company.name + ' Restaurant'
end 

owner = User.new(
  name:     'Owner Mex',
  email:    'owner@example.com',
  password: 'helloworld',
  role:     'Owner'
)
owner.save

shop = Shop.first
shop.owner = owner
shop.save


customer = User.new(
  name:     'Kerry',
  email:    'kerry@example.com',
  password: 'helloworld',
  role:     'Customer'
)
customer.save

Shop.all.each do |shop|
  Enrollment.create shop_id: shop.id, customer_id: customer.id, points: rand(100)
end



customer = User.new(
  name:     'Debbie',
  email:    'customer@example.com',
  password: 'helloworld',
  role:     'Customer'
)
customer.save

Shop.all[0..-2].each do |shop|
  Enrollment.create shop_id: shop.id, customer_id: customer.id, points: rand(100)
end




# #Create enrollments
# 15.times do 
#   customer = User.new(
#   name:     Faker::Name.name,
#   email:    Faker::Internet.email,
#   password: Faker::Lorem.characters(10)
#   )
#   customer.save 
# end
# customers = User.all

# 15.times do
#   enrollment = Enrollment.new(
#   shop_id:  Faker::Number.number(2),
#   customer_id:  Faker::Number.number(2),
#   points:  Faker::Number.number(3)
#   )
# enrollment.save
# end
# enrollment = Enrollment.all

# enrollment = Enrollment.new(
#   shop_id:  '1',
#   customer_id: '3',
#   points:       '150'
#   )
# enrollment.save

# enrollment = Enrollment.new(
#   shop_id:  '3',
#   customer_id: '3',
#   points:       '78'
#   )
# enrollment.save

