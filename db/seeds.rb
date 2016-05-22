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
    phone: "(503)-444-1111",
    section: ("250".."350").to_a.sample,
    row:     ("A".."Z").to_a.sample,
    seat:    ("A".."Z").to_a.sample,
    status:  "pending"
  })

  print "."

  sleep 5
end

4.times do |i|
  Order.create({
    phone: "(503)-444-1111",
    section: ("250".."350").to_a.sample,
    row:     ("A".."Z").to_a.sample,
    seat:    ("A".."Z").to_a.sample,
    status:  "done"
  })

  print "."

  sleep 5
end

puts
puts "Done !"
