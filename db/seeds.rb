# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create( first_name: "Jonah", last_name: "Sobol", initials: "LBS", born_on: DateTime.now, email: "jonah.sobol@gmail.com", admin: true, password: "abc123", password_confirmation: "abc123").save

