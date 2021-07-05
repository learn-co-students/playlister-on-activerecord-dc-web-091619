class Genre < ActiveRecord::Base
    has_many :songs
    has_many :artists, through: :songs

    def self.listing
        self.all.each_with_index do |genre, index|
            puts "#{index+1}. #{genre.name}"
        end
    end 

end

