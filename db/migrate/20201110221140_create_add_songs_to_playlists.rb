class CreateAddSongsToPlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :addsongstoplaylists do |t|
      t.integer :song_id
      t.integer :playlist_id
    end
  end
end
