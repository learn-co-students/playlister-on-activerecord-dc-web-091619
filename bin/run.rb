require_relative '../config/environment'
require "pry"

# joseph = Artist.find_by(name: "Joseph")
# joseph.say_hello

# puts "There are #{Artist.all.count} artist(s) in the database"


def name
    puts "Whats your name?"
end 

def greeting(user)
    puts "Welcome #{user}"
end 

name
user = gets.chomp
greeting(user)
Genre.listing
choice = gets.chomp

def choices
    if choice.include?(K-pop)
        
end 

# Greet the user
# Show the user a list of genres and ask them to choose a genre whose artists they want to see
# Show the user all the artists in the chosen genre
# Allow the user to choose an artist to see that artist's songs
# Prompt and allow the user to choose another artist and/or genre