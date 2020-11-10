  
require 'pry'
# require 'rest-client' # in order to make HTTP requests from a ruby file
require 'json'
# require "audio-playback"

# api_resp = RestClient.get("https://api.spotify.com/v1")
# api_data = JSON.parse(api_resp)

# # Prompt the user to select an audio output
# @output = AudioPlayback::Device::Output.gets

# options = {
#   :channels => [0,1],
#   :latency => 1,
#   :output_device => @output
# }

# @playback = AudioPlayback.play("app/models/audio/Viva.m4a", options)

# # Play in the foreground
# @playback.block 

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


# >>>>>>> b5f99306086b50f2ea3ec174c645e3a4d50b6dbd


