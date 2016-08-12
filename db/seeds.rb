# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.reset_column_information
Bar.reset_column_information
Movie.reset_column_information
Park.reset_column_information
Restaurant.reset_column_information
Travel.reset_column_information
Sport.reset_column_information
Family.reset_column_information

cit1 = City.create(name: "Oakland")
cit2 = City.create(name: "SF")
cit3 = City.create(name: "Seattle")
cit4 = City.create(name: "None")

bar1 = Bar.create(name: "BarOne", url: "www.BarOne.com", description: "Blah blah", why: "I love this Bar", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit1)
bar2 = Bar.create(name: "BarTwo", url: "www.BarTwo.com", description: "Blah blah", why: "this Bar is fun", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit2)
bar3 = Bar.create(name: "BarThree", url: "www.BarThree.com", description: "Blah blah", why: "This Bar is quiet", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit3)

movie1 = Movie.create(name: "MovieOne", url: "www.movieone.com", description: "Blah blah", why: "I love this movie", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit1)
movie2 = Movie.create(name: "MovieTwo", url: "www.movietwo.com", description: "Blah blah", why: "this movie is fun", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit2)
movie3 = Movie.create(name: "BarThree", url: "www.moviethree.com", description: "Blah blah", why: "This movie is quiet", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit3)

park1 = Park.create(name: "ParkOne", url: "www.ParkOne.com", description: "Blah blah", why: "I love this Park", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit1)
park2 = Park.create(name: "ParkTwo", url: "www.ParkTwo.com", description: "Blah blah", why: "this Park is fun", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit2)
park3 = Park.create(name: "ParkThree", url: "www.ParkThree.com", description: "Blah blah", why: "This Park is quiet", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit3)

rest1 = Restaurant.create(name: "RestaurantOne", url: "www.RestaurantOne.com", description: "Blah blah", why: "I love this Restaurant", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit1)
rest2 = Restaurant.create(name: "RestaurantTwo", url: "www.RestaurantTwo.com", description: "Blah blah", why: "this Restaurant is fun", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit2)
rest3 = Restaurant.create(name: "RestaurantThree", url: "www.RestaurantThree.com", description: "Blah blah", why: "This Restaurant is quiet", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit3)

travel1 = Travel.create(name: "TravelOne", url: "www.TravelOne.com", description: "Blah blah", why: "I love this Travel", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit4)
travel2 = Travel.create(name: "TravelTwo", url: "www.TravelTwo.com", description: "Blah blah", why: "this Travel is fun", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit4)
travel3 = Travel.create(name: "TravelThree", url: "www.TravelThree.com", description: "Blah blah", why: "This Bar is quiet", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit4)

sport1 = Sport.create(name: "SportOne", url: "www.SportOne.com", description: "Blah blah", why: "I love this Sport", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit1)
sport2 = Sport.create(name: "SportTwo", url: "www.SportTwo.com", description: "Blah blah", why: "this Sport is fun", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit2)
sport3 = Sport.create(name: "SportThree", url: "www.SportThree.com", description: "Blah blah", why: "This Sport is quiet", numofvisits:0, photo:"no photo yet", notes: "none", hide:false, city: cit3)

fam1 = Family.create(phone: "123-456-9999", name: "Priscilla", relationship:"other", numofvisits:0, photo:"no photo yet", notes: "none", hide: false, city: cit1)
fam2 = Family.create(phone: "999-123-9999", name: "Alan", relationship:"Business", numofvisits:0, photo:"no photo yet", notes: "none", hide: false, city: cit2)
fam3 = Family.create(phone: "333-456-7777", name: "Ivory", relationship:"Friend", numofvisits:0, photo:"no photo yet", notes: "none", hide: false, city: cit3)
