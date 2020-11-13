class CreateAddSongsToPlaylist < ActiveRecord::Migration[6.0]
  def change
    create_table :add_songs_to_playlist do |t|
      t.integer :song_id
      t.integer :playlist_id
    end
  end
end
