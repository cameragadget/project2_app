# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Classified.destroy_all
Rumor.destroy_all

users = User.create([{ first_name: "Jonah", last_name: "Sobol", initials: "LBS", born_on: DateTime.now, email: "jonah@jonah.com", admin: true, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Oat", last_name: "Asdon", initials: "OAT", born_on: DateTime.now, email: "oat@oat.com", admin: false, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Jim", last_name: "Clark", initials: "JIM", born_on: DateTime.now, email: "jim@jim.com", admin: false, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Ezra", last_name: "Raez", initials: "EAR", born_on: DateTime.now, email: "ezra@ezra.com", admin: false, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Phil", last_name: "Hughes", initials: "PIH", born_on: DateTime.now, email: "phil@phil.com", admin: false, password: "abc123", password_confirmation: "abc123" }])

classifieds = Classified.create([{ post_type: "WTB", machine_name: "Attack From Mars", body_text: "Looking to buy a HUO AFM, willing to pay top dollar for near-mint condition", location: "Los Angeles", condition: "any", price: "9500", email: "jonah@jonah.com", user_id: "1" },
                                 { post_type: "WTB", machine_name: "Terminator 3: ROTM", body_text: "I love my T2 but now I'm looking to build out the franchise.", location: "Los Angeles", condition: "any", price: "800", email: "ezra@ezra.com", user_id: "4" },
                                 { post_type: "For Sale", machine_name: "Twister", body_text: "What a terrible machine! Ugly graphics, terrible layout, my kid loved the movie so I got this to shut him up, but it's just terrible.", location: "Kansas City, KS", condition: "never played", price: "400", email: "jim@jim.com", user_id: "3" },
                                 { post_type: "WTB Parts", machine_name: "Doctor Who", body_text: "Looking to find a Dalek topper for my Doctor Who machine.  It looks naked without a plastic Dalek lighting up and yelling EXTERMINATE during multiball.", location: "Los Angeles", condition: "any", price: "600", email: "jonah@jonah.com", user_id: "1" },
                                 { post_type: "For Sale", machine_name: "Jungle Queen", body_text: "Jungle Queen in great condition. Rare machine. Home use only but you have to come pick it up at my cabin, alone, at night...", location: "Ohio", condition: "9/10", price: "2000", email: "phil@phil.com", user_id: "5" },
                                 { post_type: "For Sale; fixer", machine_name: "Eight Ball Deluxe", body_text: "Found this at a yard sale and tried to fix it up.  Playfield is really nice, but I can't get it to turn on. Could be a bad power board or transformer, would love to keep tryint to fix it, but the wife wants it gone. My loss is your gain!", location: "Los Angeles", condition: "5/10", price: "1600", email: "oat@oat.com", user_id: "2" },
                                 { post_type: "For Sale", machine_name: "Taxi", body_text: "Lovingly cared for Williams Taxi for sale. Fully shopped and restored playfield.", location: "Los Angeles", condition: "9/10", price: "2400", email: "jonah@jonah.com", user_id: "1" },
                                 { post_type: "WTB", machine_name: "Ice Cold Beer", body_text: "I know it's not a Pin, per se, but I love this game and it DOES have a silver ball! Anybody have one?", location: "Los Angeles", condition: "any", price: "1500", email: "jonah@jonah.com", user_id: "1" },
                                 { post_type: "WTB", machine_name: "Bally Star Trek", body_text: "I can't believe I sold this machine last year! Whoever I sold it to, I'll buy it back for double what you got it from me for!", location: "Los Angeles", condition: "any", price: "1600", email: "jonah@jonah.com", user_id: "1" },
                                 { post_type: "For Sale; parts", machine_name: "Terminator 2", body_text: "Found this on the side of the road in really rough shape, but it has a fully populated playfield.", location: "Los Angeles", condition: "3/10", price: "600", email: "jonah@jonah.com", user_id: "1" },
                                 { post_type: "For Sale", machine_name: "AC/DC LE", body_text: "This machine is amazing. It's HUO in show condition. I had a really bad beat on it at the last PAPA regionals and I just can't stand to look at it right now.  Please come get it out of my house.", location: "Los Angeles", condition: "10/10", price: "8500", email: "jonah@jonah.com", user_id: "1" }])

rumors = Rumor.create([{ title: "Stern announces Ghost Busters!", body_text: "Stern announced today that they will be releasing a Ghost Busters themed machine as their lattest entry into their lineup.  Early leaked photos of the playfield look very promising with good flow and lots of toys!", user_id: "1"},
                       { title: "Big Lebowski faces even more delays", body_text: "The much maligned Big Lebowski table has faced new delays, begging the question if it will ever be released at all.  After over a year embattled over royalties and licensing deals with the Coen Brothers, this newest delay, a result of a failure to procure soundtrack rights is making many early investors cancel their pre-orders, putting the financial viability of this machine every being released into question.", user_id: "3"},
                       { title: "Game of Thrones software update due within days", body_text: "Stern has announced an updated softward build for their newest Game Of Thrones machine. This update brings much deeper functionality to the Lannister currency trading introduced but not fully implemented in the release build.  Also rumored is a 'Red Wedding 6 ball Multiball' that cannot be won, and ends suddenly with the flippers going dead, the player watching helplessly as all 6 balls drain down the middle...", user_id: "4"}])
