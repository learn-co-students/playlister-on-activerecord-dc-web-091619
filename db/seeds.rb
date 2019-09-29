require_relative "../app/models/artist.rb"
require_relative "../app/models/genre.rb"
require_relative "../app/models/song.rb"

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

artist1 = Artist.find_or_create_by(name: "Adele")
artist2 = Artist.find_or_create_by(name: "BTS")
artist3 = Artist.find_or_create_by(name: "SHINee")

genre1 = Genre.find_or_create_by(name: "pop")
genre2 = Genre.find_or_create_by(name: "k-pop")
genre3 = Genre.find_or_create_by(name: "indie")


song1 = Song.find_or_create_by(name: "Hello", artist_id: artist1.id, genre_id: genre1.id)
song2 = Song.find_or_create_by(name: "When we were young", artist_id: artist1.id, genre_id: genre3.id)
song3 = Song.find_or_create_by(name: "Rolling in the deep", artist_id: artist1.id, genre_id: genre1.id)
song4 = Song.find_or_create_by(name: "DNA", artist_id: artist2.id, genre_id: genre2.id)
song5 = Song.find_or_create_by(name: "Hello", artist_id: artist3.id, genre_id: genre2.id)
song6 = Song.find_or_create_by(name: "Euphoria", artist_id: artist2.id, genre_id: genre2.id)
song7 = Song.find_or_create_by(name: "Why so serious", artist_id: artist3.id, genre_id: genre3.id)
