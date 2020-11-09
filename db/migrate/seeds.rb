  
require 'pry'
require 'rest-client' # in order to make HTTP requests from a ruby file
require 'json'

Song.destroy_all
Playlist.destroy_all
User.destroy_all

Song.create [
    {song_name: "POV", artist_name: "Ariana Grande", song_id: "", artist_id: "", song_length: "4 min", genre: "pop"}
    {song_name: "vroom vroom ", artist_name: "charli xcx", song_id: "", artist_id: "", song_length: "2 min 54 sec", genre: "pop"}
    {song_name: "broken flowers", artist_name: "danny l harle", song_id: "", artist_id: "", song_length: "", genre: ""}
    {song_name: "one eye open", artist_name: "black marble", song_id: "", artist_id: "", song_length: "", genre: ""}
    {song_name: "john wayne", artist_name: "lady gaga", song_id: "", artist_id: "", song_length: "", genre: ""}

]

# t.text :song_name
# t.string :artist_name
# t.integer :song_id
# t.integer :artist_id
# t.text :song_length
# t.string :genre


