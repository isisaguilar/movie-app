# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

actor = Actor.new({first_name: "Mike", last_name: "Myers", known_for: "Shrek"})
actor.save

actor = Actor.new({first_name: "Jim", last_name: "Parsons", known_for: "Home"})
actor.save

actor = Actor.new({first_name: "Ryan", last_name: "Reynolds", known_for: "Detective Pikachu"})
actor.save