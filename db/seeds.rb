u1 = User.new(name_first: "Joe1", name_last: "Joe1")
u1.password =  "123"
u1.password_confirmation = "123"
u1.save

u2 = User.new(name_first: "Joe2", name_last: "Joe2")
u2.password =  "123"
u2.password_confirmation = "123"
u2.save

c1 = Country.create(name:"joemany1", location: "here1")
c2 = Country.create(name:"joemany2", location: "here2")
u1.country = c1
u2.country = c2


m = Message.create(body: "1this is my body1", subject: "1this is my subject1")
m.sent = c1
m.received = c2
m.save
