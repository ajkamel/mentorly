# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


GroupMessage.destroy_all
Group.destroy_all
User.destroy_all

group1 = Group.create(name: "AshK Referee Group")
group1 = Group.create(name: "JesseS Referee Group")
group1 = Group.create(name: "JasonL Referee Group")


ashk = User.create(name: "Ash Kamel", email: "a@ga.co", password: "abc123", password_confirmation: "abc123", 
						address: "1 5th Ave, New York, NY 10035", picture_url: "https://pbs.twimg.com/profile_images/338028219/profile_pic.jpg",
						bio: "Aspiring Web Dev", interests: "coffee, soccer, programming", 
						 birthdate: "1984-01-01", mentor: true, admin: true)


jasonl = User.create(name: "Jason Leibowitz", email: "j@ga.co", password: "abc123", password_confirmation: "abc123", 
						address: "100 5th Ave, New York, NY 10035", picture_url: "https://lh3.googleusercontent.com/-tFswdu3blQk/AAAAAAAAAAI/AAAAAAAAAwc/i6ny0ZuTLis/photo.jpg",
						bio: "coffee connoisseur", interests: "coffee, soccer, foursquare",
						birthdate: "1986-01-01", mentor: true, admin: false)

jesses = User.create(name: "Jesse Sessler", email: "je@ga.co", password: "abc123", password_confirmation: "abc123", 
						address: "5 5th Ave, New York, NY 10035", picture_url: "http://abchoopsnyc.com/images/playerprof/Sessler_Jesse_Hodor.png",
						bio: "Knowledge Acquirer", interests: "knitting, basketball, tennis",
						birthdate: "1987-01-01", mentor: true, admin: false)

jane = User.create(name: "Jane Sessler", email: "jane@ga.co", password: "abc123", password_confirmation: "abc123", 
						address: "5 5th Ave, New York, NY 10035", picture_url: "http://upload.wikimedia.org/wikipedia/en/thumb/3/3f/Jane_Wenham-Jones_%28photo_by_Bill_Harris%29.jpg/480px-Jane_Wenham-Jones_%28photo_by_Bill_Harris%29.jpg",
						bio: "Knowledge Acquirer", interests: "knitting, chess, foursquare",
						birthdate: "1987-01-01", mentor: false, admin: false)

john = User.create(name: "Jesse Sessler", email: "john@ga.co", password: "abc123", password_confirmation: "abc123", 
						address: "5 5th Ave, New York, NY 10035", picture_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/John_Irving_at_Cologne_2010_%287108%29.jpg/774px-John_Irving_at_Cologne_2010_%287108%29.jpg",
						bio: "Knowledge Acquirer", interests: "snowboarding, refereeing, soccer",
						birthdate: "1987-01-01", mentor: false, admin: false)




