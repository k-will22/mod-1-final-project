class Playlist < ActiveRecord::Base
    belongs_to :users
    has_many :songs, through: :add_songs_to_playlist
end

# country_playlist_1 = Playlist.create(playlist_title: "country 1", song_id: [1, 2, 3, 4], artist_id: [1, 2, 3, 4])
# country_playlist_2 = Playlist.create(playlist_title: "country 2", song_id: [5, 6, 7, 8], artist_id: [5, 6, 7, 8])
# rock_playlist_1 = Playlist.create(playlist_title: "rock 1", song_id: [9, 10, 11, 12, 13], artist_id: [9, 10, 11, 12, 13])
# rock_playlist_2 = Playlist.create(playlist_title: "rock 2", song_id: [14, 15, 16, 17], artist_id: [14, 15, 16, 17])
# pop_playlist_1 = Playlist.create(playlist_title: "pop 1", song_id: [18, 19, 20, 21, 22], artist_id: [18, 19, 20, 21, 22])
# pop_playlist_2 = Playlist.create(playlist_title: "pop 2", song_id: [23, 24, 25, 26], artist_id: [23, 24, 25, 26])
# rap_playlist_1 = Playlist.create(playlist_title: "rap 1", song_id: [27, 28, 29, 30], artist_id: [27, 28, 29, 30])
# rap_playlist_2 = Playlist.create(playlist_title: "rap 2", song_id: [31, 32, 33, 34], artist_id: [31, 32, 33, 34])
# edm_playlist_1 = Playlist.create(playlist_title: "edm 1", song_id: [35, 36, 37, 38], artist_id: [35, 36, 37, 38])
# edm_playlist_2 = Playlist.create(playlist_title: "edm 2", song_id: [39, 40, 41, 42], artist_id: [39, 40, 41, 42])