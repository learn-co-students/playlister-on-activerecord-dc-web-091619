class UpdateSongs < ActiveRecord::Migration[5.2]
    def change
    remove_column :songs, :artist
    remove_column :songs, :genre
    end


end