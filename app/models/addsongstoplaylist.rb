class AddSongsToPlaylist < ActiveRecord::Base
    belongs_to :songs
    belongs_to :playlists
end

# AddSongToPlaylist.create(song_id: 1, playlist_id: 1)
# AddSongToPlaylist.create(song_id: 2, playlist_id: 1)
# AddSongToPlaylist.create(song_id: 3, playlist_id: 1)
# AddSongToPlaylist.create(song_id: 4, playlist_id: 1)
# AddSongToPlaylist.create(song_id: 5, playlist_id: 2)
# AddSongToPlaylist.create(song_id: 6, playlist_id: 2)
# AddSongToPlaylist.create(song_id: 7, playlist_id: 2)
# AddSongToPlaylist.create(song_id: 8, playlist_id: 2)
# AddSongToPlaylist.create(song_id: 9, playlist_id: 3)
# AddSongToPlaylist.create(song_id: 10, playlist_id: 3)
# AddSongToPlaylist.create(song_id: 11, playlist_id: 3)
# AddSongToPlaylist.create(song_id: 12, playlist_id: 3)
# AddSongToPlaylist.create(song_id: 13, playlist_id: 3)
# AddSongToPlaylist.create(song_id: 14, playlist_id: 4)
# AddSongToPlaylist.create(song_id: 15, playlist_id: 4)
# AddSongToPlaylist.create(song_id: 16, playlist_id: 4)
# AddSongToPlaylist.create(song_id: 17, playlist_id: 4)
# AddSongToPlaylist.create(song_id: 18, playlist_id: 5)
# AddSongToPlaylist.create(song_id: 19, playlist_id: 5)
# AddSongToPlaylist.create(song_id: 20, playlist_id: 5)
# AddSongToPlaylist.create(song_id: 21, playlist_id: 5)
# AddSongToPlaylist.create(song_id: 22, playlist_id: 5)
# AddSongToPlaylist.create(song_id: 23, playlist_id: 6)
# AddSongToPlaylist.create(song_id: 24, playlist_id: 6)
# AddSongToPlaylist.create(song_id: 25, playlist_id: 6)
# AddSongToPlaylist.create(song_id: 26, playlist_id: 6)
# AddSongToPlaylist.create(song_id: 27, playlist_id: 7)
# AddSongToPlaylist.create(song_id: 28, playlist_id: 7)
# AddSongToPlaylist.create(song_id: 29, playlist_id: 7)
# AddSongToPlaylist.create(song_id: 30, playlist_id: 7)
# AddSongToPlaylist.create(song_id: 31, playlist_id: 8)
# AddSongToPlaylist.create(song_id: 32, playlist_id: 8)
# AddSongToPlaylist.create(song_id: 33, playlist_id: 8)
# AddSongToPlaylist.create(song_id: 34, playlist_id: 8)
# AddSongToPlaylist.create(song_id: 35, playlist_id: 9)
# AddSongToPlaylist.create(song_id: 36, playlist_id: 9)
# AddSongToPlaylist.create(song_id: 37, playlist_id: 9)
# AddSongToPlaylist.create(song_id: 38, playlist_id: 9)
# AddSongToPlaylist.create(song_id: 39, playlist_id: 10)
# AddSongToPlaylist.create(song_id: 40, playlist_id: 10)
# AddSongToPlaylist.create(song_id: 41, playlist_id: 10)
# AddSongToPlaylist.create(song_id: 42, playlist_id: 10)