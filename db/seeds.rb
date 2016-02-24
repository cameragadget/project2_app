# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ first_name: "Jonah", last_name: "Sobol", initials: "LBS", born_on: DateTime.now, email: "jonah.sobol@gmail.com", admin: true, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Oat", last_name: "Asdon", initials: "OAT", born_on: DateTime.now, email: "oat@oat.com", admin: false, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Jim", last_name: "Clark", initials: "JIM", born_on: DateTime.now, email: "jim@jim.com", admin: false, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Ezra", last_name: "Raez", initials: "EAR", born_on: DateTime.now, email: "ezra@ezra.com", admin: false, password: "abc123", password_confirmation: "abc123" },
                      { first_name: "Phil", last_name: "Hughes", initials: "PIH", born_on: DateTime.now, email: "phil@phil.com", admin: false, password: "abc123", password_confirmation: "abc123" }])

classifieds = Classified.create([{ post_type: "WTB", machine_name: "Attack From Mars", body_text: "Looking to buy a HUO AFM, willing to pay top dollar for near-mint condition", location: "Los Angeles", condition: "any", price: "9500", email: "jonah.sobol@gmail.com", user_id: "1" },
                                 { post_type: "WTB", machine_name: "Terminator 3: Rise of The Machines", body_text: "I love my T2 but now I'm looking to build out the franchise.", location: "Los Angeles", condition: "any", price: "800", email: "ezra@ezra.com", user_id: "4" },
                                 { post_type: "For Sale", machine_name: "Taxi", body_text: "Lovingly cared for Williams Taxi for sale. Fully shopped and restored playfield.", location: "Los Angeles", condition: "9/10", price: "2400", email: "jonah.sobol@gmail.com", user_id: "1" }])

