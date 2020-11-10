class User < ActiveRecord::Base
    has_many :playlists
end

# sara = User.create(username: "sara")
# emina = User.create(username: "emina")
# tarik = User.create(username: "tarik")
# sammy = User.create(username: "sammy")