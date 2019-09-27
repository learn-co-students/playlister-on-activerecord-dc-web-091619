hello = Song.create(:name=> 'Hello')
a_hard_days_night = Song.create(:name=> 'A Hard Days Night')

adele = Artist.create(:name=> 'Adele')
the_beatles = Artist.create(:name=> 'The Beatles')

pop = Genre.create(:name=> 'Pop')
rock = Genre.create(:name=> 'Rock')

hello.artist = adele
a_hard_days_night.artist = the_beatles

adele.songs << hello
the_beatles.songs << a_hard_days_night

pop.songs << hello
rock.songs << a_hard_days_night