# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
department = ["Sales", "Technical", "Marketing"]


1000.times do
  Request.create({ name:   Faker::Name.name,
                   email:  Faker::Internet.email,
                  department: department.sample,
                  message: Faker::Hacker.say_something_smart,
                  actions: "Not Done"})

end
