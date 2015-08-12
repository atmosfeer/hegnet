# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Institution.create(name: 'RHK')
User.create(first_name: "Nicolas",
            last_name: "Feer",
            password: "12345678",
            email: "atmosfeer@gmail.com",
            studies: "Film & Medievidenskab",
            status: "Desperat!",
            bio: "Bare en gut fra Jelling der holder hunder")
Committee.create(name: "BrKr", description: "Vi tuller rundt og sørger for alt på kollegiet fungerer.")
Room.create(number: "454")
Membership.create(user_id: 1, committee_id: 1)
Lease.create(user_id: 1, room_id: 1)