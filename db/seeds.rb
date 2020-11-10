require 'pry'

Song.destroy_all
Playlist.destroy_all
User.destroy_all

sara = User.create(username: "sara")
emina = User.create(username: "emina")
tarik = User.create(username: "tarik")
sammy = User.create(username: "sammy")

pov = Song.create(song_name: "POV", artist_name: "Ariana Grande", song_id: "", artist_id: "", song_length: "4 min", genre: "pop")
vroom_vroom = Song.create(song_name: "vroom vroom ", artist_name: "charli xcx", song_id: "", artist_id: "", song_length: "2 min 54 sec", genre: "pop")
broken_flowers = Song.create(song_name: "broken flowers", artist_name: "danny l harle", song_id: "", artist_id: "", song_length: "", genre: "")
one_eye_open = Song.create(song_name: "one eye open", artist_name: "black marble", song_id: "", artist_id: "", song_length: "", genre: "")
john_wayne = Song.create(song_name: "john wayne", artist_name: "lady gaga", song_id: "", artist_id: "", song_length: "", genre: "") 


binding.pry




