# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.create(name:"Terekke", bio:"Lofi from Holland")
Artist.create(name:"DJ Harvey", bio:"Disco Legend")
Artist.create(name:"Nils Frahm", bio:"Pianist")

Genre.create(name:"Disco")
Genre.create(name:"House")
Genre.create(name:"Afrobeat")
