# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts('Seeding')
Trip.destroy_all
Order.destroy_all
Client.destroy_all
Route.destroy_all
Vehicle.destroy_all
TransportCompany.destroy_all



10.times do
    Route.create(name:Faker::Address.community)
end

60.times do
    Client.create(name:Faker::Commerce.vendor, route_id:(1..10).to_a.sample, address:Faker::Address.full_address)
end

200.times do
    Order.create(volume:(10000..13500).to_a.sample, client_id:(1..60).to_a.sample, status:false)
end

10.times do
    TransportCompany.create(name:Faker::Company.name)
end

30.times do
    Vehicle.create(v_type:"53 ft trailer w/tractor", capacity:13500, transport_company_id:(1..10).to_a.sample, assigned:false)
end



puts('Seeding completed!!')
