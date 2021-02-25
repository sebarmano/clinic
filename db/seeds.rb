# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Adding customers..."
10.times do
  Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
  )
end

puts "Adding vehicles..."
20.times do
  Vehicle.create(
    customer: Customer.all.sample,
    brand: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    plate: Faker::Vehicle.license_plate,
  )
end
puts "Done."
