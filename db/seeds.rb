# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:'user1@test.com', first_name:'Jimmy', last_name:'Dean', password:'password')
User.create(email:'user2@test.com', first_name:'John', last_name:'Doe', password:'password')


Trip.create(name:'Trip 1', description:'Trip 1 description', user_id:1)
Trip.create(name:'Trip 2', description:'Trip 2 description', user_id:1)

Location.create(name:'Location test', description:'location description testing', kind:'hotel', trip_id:1)
Location.create(name:'Location test2', description:'location description testing2', kind:'restaurant', trip_id:1)

Address.create(street:"Random ave", city:"New York", state:"NY", zip:"83920", country:"USA",location_id:1)

Review.create(title:"Review1", body:"this is a review 1", score:3, trip_id:1)
