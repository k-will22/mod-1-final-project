  
require 'pry'
require 'rest-client' # in order to make HTTP requests from a ruby file
require 'json'

Song.destroy_all 
Playlist.destroy_all 

api_resp = RestClient.get("https://api.spotify.com/v1")
api_data = JSON.parse(api_resp)

require "audio-playback"

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
