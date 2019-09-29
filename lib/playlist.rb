require "pry"
require_relative '../config/environment'


def welcome
    #greets the user 
    puts "Welcome to the Playlister!"
end

def list_genres
    #list genres
    $genre_list = Genre.all.map(&:name)
    puts $genre_list
    #ask the user to pick on
    puts "Pick one genre that you want to see the artists"
    $user_input = gets.chomp
end

def show_artist_in_genre
    #shows all the artist in the genre the user picked
    if $genre_list.include?($user_input)
       puts Genre.all.where(name: $user_input)[0].artists.uniq.map(&:name)
    else
        puts "genre not found"
    end
end

def choose_artist
    #lets user choose artist and it will the artist's songs
    puts "choose on artist to see the songs of"
    user_input2 = gets.chomp   # artist's name
    # puts Artist.all.where(name: user_input2)[0].songs.map(&:name)
    grab_artist_songs(user_input2)
end

def grab_artist_songs(input)
    puts Artist.all.where(name: input)[0].songs.map(&:name)
end

def prompt_user
    #prompt and allow the user to choose another artist and/or genre
    puts "choose another artist or genre"
    user_input3 = gets.chomp
    if Artist.all.map(&:name).include?(user_input3)
        grab_artist_songs(user_input3)
    elsif Genre.all.map(&:name).include?(user_input3)
        show_artist_in_genre
        choose_artist
    else puts "wrong option"
    end

end

def runner
    welcome
    list_genres
    show_artist_in_genre
    choose_artist
    prompt_user
    puts "ByE!!!!!!"
end

