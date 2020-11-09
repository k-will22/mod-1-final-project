class CreateCreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.text :playlist_title
      t.integer :song_id
      t.integer :artist_id
    end
  end
end
