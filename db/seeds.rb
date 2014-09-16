# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create an admin user
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