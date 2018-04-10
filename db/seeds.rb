# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prince = Artist.create(name: "Prince", bio: "Greatest artist of all time.")
fiftycent = Artist.create(name: "50 Cent", bio: "Get that money.")

rap = Genre.create(name: "Rap")
pop = Genre.create(name: "Pop")

many_men = Song.create(name: "Many Men", artist_id: fiftycent.id, genre_id: rap.id)
many_men = Song.create(name: "When Doves Cry", artist_id: prince.id, genre_id: pop.id)
