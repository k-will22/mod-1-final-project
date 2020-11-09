class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :song_name
      t.string :artist_name
      t.integer :song_id
      t.integer :artist_id
      t.text :song_length
      t.string :genre
    end
  end
end
