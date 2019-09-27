class AddColumnToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :albums, :string
  end
end
