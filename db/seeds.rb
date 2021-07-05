# Add seed data here. Seed your database with `rake db:seed`

#Artist 
anderson_paak = Artist.find_or_create_by(name: "Anderson Paak")
mamamoo = Artist.find_or_create_by(name: "Mamamoo")

#Song
mr_ambitious = Song.find_or_create_by(name: "Mr. Ambitious", artist: anderson_paak)
bubblin = Song.find_or_create_by(name: "Bubblin", artist_id: 2)
rnp = Song.find_or_create_by(name: "RNP")
make_it_better = Song.find_or_create_by(name: "Make It Better")
woohoo = Song.find_or_create_by(name: "Woohoo")

#Genre
kpop = Genre.find_or_create_by(name: "K-Pop")
rnb = Genre.find_or_create_by(name: "R&B")

mr_ambitious.genre = kpop
mr_ambitious.save

kpop.songs << make_it_better
kpop.save