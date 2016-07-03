# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Setting up sample admins..."

Admin.create(
  email:                 "contact@seatjoy.io",
  password:              "abhinav",
  password_confirmation: "abhinav")

Admin.create(
  email:                 "jay_polkinghorn@comcastspectacor.com",
  password:              "LetsGoQuakes",
  password_confirmation: "LetsGoQuakes")

puts
puts "Done!"

puts
puts "Setting up sample orders..."

35.times do |i|
  Order.create({
    game:         "LA Galaxy vs. Toronto Raptors",
    phone:        "(503)-444-1111",
    seat_address: "G/23/45",  # section / row / seat
    status:       ["pending", "done"].sample,
    stadium:      ["Stadium A", "Stadium B"].sample
  })

  print "."

  sleep 2
end

puts
puts "Done !"
