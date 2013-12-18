# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.new(name_first: "Joe1", name_last: "Joe1")
u1.password =  "123"
u1.password_confirmation = "123"
u1.save

c1 = Country.create(name:"joemany1", location: "here1")

u1.country = c1

u2 = User.new(name_first: "Joe2", name_last: "Joe2")
u2.password =  "123"
u2.password_confirmation = "123"
u2.save

c2 = Country.create(name:"joemany2", location: "here2")

u2.country = c2

m1 = Message.create(body: "1this is my body1", subject: "1this is my subject1")

m1.from = u1
m1.to = u2

