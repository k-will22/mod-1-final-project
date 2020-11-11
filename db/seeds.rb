require 'pry'

Song.destroy_all
Playlist.destroy_all
User.destroy_all

sara = User.create(username: "sara")
mina = User.create(username: "emina")
tarik = User.create(username: "tarik")
sammy = User.create(username: "sammy")
keith = User.create(username: "keith")

# pov = Song.create(song_name: "POV", artist_name: "Ariana Grande", song_id: "", artist_id: "", song_length: "4 min", genre: "pop")
# vroom_vroom = Song.create(song_name: "vroom vroom ", artist_name: "charli xcx", song_id: "", artist_id: "", song_length: "2 min 54 sec", genre: "pop")
# broken_flowers = Song.create(song_name: "broken flowers", artist_name: "danny l harle", song_id: "", artist_id: "", song_length: "", genre: "")
# one_eye_open = Song.create(song_name: "one eye open", artist_name: "black marble", song_id: "", artist_id: "", song_length: "", genre: "")
# john_wayne = Song.create(song_name: "john wayne", artist_name: "lady gaga", song_id: "", artist_id: "", song_length: "", genre: "") 

roller_coaster = Song.create(song_name: "roller coaster", artist_name: "luke bryan", song_id: 1, artist_id: 1, song_length: "", genre: "country")
we_are_tonight = Song.create(song_name: "we are tonight", artist_name: "billy currington", song_id: 2, artist_id: 2, song_length: "", genre: "country")
beer_money = Song.create(song_name: "beer_money", artist_name: "kip moore", song_id: 3, artist_id: 3, song_length: "", genre: "country")
i_hold_on = Song.create(song_name: "i hold on", artist_name: "dierks bentley", song_id: 4, artist_id: 4, song_length: "", genre: "country")
springsteen = Song.create(song_name: "springsteen", artist_name: "eric church", song_id: 5, artist_id: 5, song_length: "", genre: "country")
peter_pan = Song.create(song_name: "peter pan", artist_name: "kelsea ballerini", song_id: 6, artist_id: 6, song_length: "", genre: "country")
sugar = Song.create(song_name: "sugar", artist_name: "mareen morris", song_id: "", artist_id: 7, song_length: 7, genre: "country")
days_go_by = Song.create(song_name: "days go by", artist_name: "keith urban", song_id: 8, artist_id: 8, song_length: "", genre: "country")

machinehead = Song.create(song_name: "machinehead", artist_name: "bush", song_id: 9, artist_id: 9, song_length: "", genre: "rock")
today = Song.create(song_name: "today", artist_name: "smashing pumpkins", song_id: 10, artist_id: 10, song_length: "", genre: "rock")
say_it_aint_so = Song.create(song_name: "say it aint so", artist_name: "weezer", song_id: 11, artist_id: 11, song_length: "", genre: "rock")
dammit = Song.create(song_name: "dammit", artist_name: "blink-182", song_id: 12, artist_id: 12, song_length: "", genre: "rock")
creep = Song.create(song_name: "creep", artist_name: "radiohead", song_id: 13, artist_id: 13, song_length: "", genre: "rock")
lucky_denver_mint = Song.create(song_name: "lucky denver mint", artist_name: "jimmie eat world", song_id: 14, artist_id: 14, song_length: "", genre: "rock")
follow_you_down = Song.create(song_name: "follow you down", artist_name: "gin blossoms", song_id: 15, artist_id: 15, song_length: "", genre: "rock")
far_behind = Song.create(song_name: "far behind", artist_name: "candlebox", song_id: 16, artist_id: 16, song_length: "", genre: "rock")
mr_jones = Song.create(song_name: "mr jones", artist_name: "counting crows", song_id: 17, artist_id: 17, song_length: "", genre: "rock")

bad_guy = Song.create(song_name: "bad guy", artist_name: "billie eilish", song_id: 18, artist_id: 18, song_length: "", genre: "pop")
lights = Song.create(song_name: "lights", artist_name: "ellie goulding", song_id: 19, artist_id: 19, song_length: "", genre: "pop")
shape_of_you = Song.create(song_name: "shape of you", artist_name: "ed sheeran", song_id: 20, artist_id: 20, song_length: "", genre: "pop")
diamonds = Song.create(song_name: "diamonds", artist_name: "rihanna", song_id: "", artist_id: 21, song_length: 21, genre: "pop")
shake_it_off = Song.create(song_name: "shake it off", artist_name: "taylor swift", song_id: 22, artist_id: 22, song_length: "", genre: "pop")
bad_at_love = Song.create(song_name: "bad at love", artist_name: "halsey", song_id: 23, artist_id: 23, song_length: "", genre: "pop")
tell_me_you_love_me = Song.create(song_name: "tell me love me", artist_name: "demi lovato", song_id: 24, artist_id: 24, song_length: "", genre: "pop")
good_for_you = Song.create(song_name: "good for you", artist_name: "selena gomez", song_id: "", artist_id: 25, song_length: 25, genre: "pop")
never_be_the_same = Song.create(song_name: "never be the same", artist_name: "camilia cabello", song_id: 26, artist_id: 26, song_length: "", genre: "pop")

thug_luv = Song.create(song_name: "thug luv", artist_name: "bone thugs-n-harmony", song_id: 27, artist_id: 27, song_length: "", genre: "rap")
murder_ink = Song.create(song_name: "murder ink", artist_name: "dr dre", song_id: 28, artist_id: 28, song_length: "", genre: "rap")
keep_talkin = Song.create(song_name: "keep talkin", artist_name: "d12", song_id: 29, artist_id: 29, song_length: "", genre: "rap")
hypnotize = Song.create(song_name: "hypnotize", artist_name: "notorious big", song_id: 30, artist_id: 30, song_length: "", genre: "rap")
on_fire = Song.create(song_name: "on fire", artist_name: "lloyd banks", song_id: 31, artist_id: 31, song_length: "", genre: "rap")
lucid_dreams = Song.create(song_name: "lucid dreams", artist_name: "juice wrld", song_id: 32, artist_id: 32, song_length: "", genre: "rap")
no_flex_zone = Song.create(song_name: "no flex zone", artist_name: "rae sremmurd", song_id: 33, artist_id: 33, song_length: "", genre: "rap")
forever = Song.create(song_name: "forever", artist_name: "drake", song_id: "", artist_id: 34, song_length: 34, genre: "rap")

no_beef = Song.create(song_name: "no beef", artist_name: "steve aoki", song_id: 35, artist_id: 35, song_length: "", genre: "edm")
virus = Song.create(song_name: "virus", artist_name: "martin garrix", song_id: 36 artist_id: 36, song_length: "", genre: "edm")
play_hard = Song.create(song_name: "play hard", artist_name: "krewella", song_id: 37, artist_id: 37, song_length: "", genre: "edm")
dont_you_worry_child = Song.create(song_name: "dont you worry child", artist_name: "swedish house mafia", song_id: 38, artist_id: 38, song_length: "", genre: "edm")
stars = Song.create(song_name: "stars", artist_name: "marshmello", song_id: 39, artist_id: 39, song_length: "", genre: "edm")
only_now = Song.create(song_name: "only now", artist_name: "seven lions", song_id: 40, artist_id: 40, song_length: "", genre: "edm")
saving_light = Song.create(song_name: "saving light", artist_name: "gareth emery", song_id: 41, artist_id: 41, song_length: "", genre: "edm")
drowning = Song.create(song_name: "drowning", artist_name: "armin van buuran", song_id: 42, artist_id: 42, song_length: "", genre: "edm")

country_playlist_1 = Playlist.create(playlist_name: "country 1", song_id: [1, 2, 3, 4], playlist_id: 1)
country_playlist_2 = Playlist.create(playlist_name: "country 2", song_id: [5, 6, 7, 8], playlist_id: 2)
rock_playlist_1 = Playlist.create(playlist_name: "rock 1", song_id: [9, 10, 11, 12, 13], playlist_id: 3)
rock_playlist_2 = Playlist.create(playlist_name: "rock 2", song_id: [14, 15, 16, 17], playlist_id: 4)
pop_playlist_1 = Playlist.create(playlist_name: "pop 1", song_id: [18, 19, 20, 21, 22], playlist_id: 5)
pop_playlist_2 = Playlist.create(playlist_name: "pop 2", song_id: [23, 24, 25, 26], playlist_id: 6)
rap_playlist_1 = Playlist.create(playlist_name: "rap 1", song_id: [27, 28, 29, 30], playlist_id: 7)
rap_playlist_2 = Playlist.create(playlist_name: "rap 2", song_id: [31, 32, 33, 34], playlist_id: 8)
edm_playlist_1 = Playlist.create(playlist_name: "edm 1", song_id: [35, 36, 37, 38], playlist_id: 9)
edm_playlist_2 = Playlist.create(playlist_name: "end 2", song_id: [39, 40, 41, 42], playlist_id: 10)


binding.pry




