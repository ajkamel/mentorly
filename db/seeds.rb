# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ashk = User.create(name: "Ash Kamel", email: "ajkamel@gmail.com" password_digest: "abc123", 
						address: "1 5th Ave, New York, NY 10035", picture_url: "https://pbs.twimg.com/profile_images/338028219/profile_pic.jpg",
						bio: "Aspiring Web Dev", interests: "coffee, soccer, programming", 
						 birthdate: "1984-01-01", mentor?: true, admin?: true)


jasonl = User.create(name: "Jason Leibowitz", email: "jasonL@gmail.com" password_digest: "abc123", 
						address: "100 5th Ave, New York, NY 10035", picture_url: "https://lh3.googleusercontent.com/-tFswdu3blQk/AAAAAAAAAAI/AAAAAAAAAwc/i6ny0ZuTLis/photo.jpg",
						bio: "coffee connoisseur", interests: "coffee, soccer, foursquare"
						birthdate: "1986-01-01", mentor?: true, admin?: false)

jesses = User.create(name: "Jesse Sessler", email: "jesselgmail.com" password_digest: "abc123", 
						address: "5 5th Ave, New York, NY 10035", picture_url: "http://abchoopsnyc.com/images/playerprof/Sessler_Jesse_Hodor.png",
						birthdate: "1987-01-01", mentor?: false, admin?: false)