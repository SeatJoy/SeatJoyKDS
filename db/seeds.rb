# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Setting up sample orders..."

15.times do |i|
  Order.create({
    game:         "LA Galaxy vs. Toronto Raptors",
    phone:        "(503)-444-1111",
    seat_address: "G/23/45",  # section / row / seat
    status:       "pending",
    stadium:      "Stadium A"
  })

  print "."

  sleep 5
end

4.times do |i|
  Order.create({
    game:         "LA Galaxy vs. Toronto Raptors",
    phone:        "(503)-444-1111",
    seat_address: "G/23/45",  # section / row / seat
    status:       "done",
    stadium:      "Stadium B"
  })

  print "."

  sleep 5
end

puts
puts "Done !"
