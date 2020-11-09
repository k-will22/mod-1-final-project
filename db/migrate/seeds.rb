  
require 'pry'
require 'rest-client' # in order to make HTTP requests from a ruby file
require 'json'
require "audio-playback"

api_resp = RestClient.get("https://api.spotify.com/v1")
api_data = JSON.parse(api_resp)

# Prompt the user to select an audio output
@output = AudioPlayback::Device::Output.gets

options = {
  :channels => [0,1],
  :latency => 1,
  :output_device => @output
}

@playback = AudioPlayback.play("app/models/audio/Viva.m4a", options)

# Play in the foreground
@playback.block
=======
Song.destroy_all
Playlist.destroy_all
User.destroy_all



# t.text :song_name
# t.string :artist_name
# t.integer :song_id
# t.integer :artist_id
# t.text :song_length
# t.string :genre


>>>>>>> b5f99306086b50f2ea3ec174c645e3a4d50b6dbd
