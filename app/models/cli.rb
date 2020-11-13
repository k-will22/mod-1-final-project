require "tty-prompt"
require "pry"
# require 'rest-client'  

require "ruby2d"

       


class CLI ## class for 
    attr_accessor :username, :playlists, :songs

    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'drpepper' #drpepper
    @@user = nil


    def start #opening title
        system('clear')
        puts @@artii.asciify("    it's")
        puts @@artii.asciify("MYOUSIC ")
        puts @@artii.asciify("time !")
        self.welcome
    end
 

    def welcome #welcome sentence and menu prompt 
        sleep(0.5)
        puts "🎸💿WELCOME TO MYOUSIC!💿🎸"
        self.menu
    end

    def menu
        prompt = TTY::Prompt.new
        sleep(1)
        @@user = User.first
        puts "Before we get you started..."
        welcome_menu = prompt.select ("are you a new or returning listener?") do |menu|
            menu.choice "Returning Listener 👵🏼"
            menu.choice "New Listener 👶🏼"
            menu.choice "Exit ❌"
        end
            if welcome_menu == "Returning Listener 👵🏼"
                system("clear")
                self.login
            elsif welcome_menu == "New Listener 👶🏼"
                system("clear")
                self.new_account
            elsif welcome_menu == "Exit ❌"
                system("clear")
                # exit!
            end 
            exit!   
        end

        def login
            prompt = TTY::Prompt.new
            puts "👋🏼 Welcome back, music fiend! 🔊🔊"
            username = prompt.ask ("What is your name?")
                if User.find_by(username: username)
                    @user = User.find_by(username: username.downcase!)
                    @user
                self.playlist_menu
            elsif
                system("clear")
                who_are_you = prompt.select("Uh... we don't know you. 👎 ") do |menu|
                    menu.choice "Let me try again."
                    menu.choice "Actually, let me create an account."
                    system("clear")
                end
            end
            if who_are_you == "Let me try again."
                system("clear")
                self.login
            elsif who_are_you == "Actually, let me create an account."
                system("clear")
                self.new_account
            end

        end

        def new_account ##how to create a new account
            prompt = TTY::Prompt.new
            puts "Thanks for joining us!"
            username = prompt.ask("What would you like us to remember you by? ")
            new_user = User.create(username: username)
            sleep(0.5)
            @user = User.all.find_by(username: username)
            @user
            self.playlist_menu
        end

        def create_playlist #creating a new playlist
            prompt = TTY::Prompt.new
            puts "Create your new playlist here!"
            playlist = prompt.ask("What do you want to name your new playlist? 🎹")
            # new_playlist = Playlist.create(playlists: playlist)
            # sleep(0.5)
            # @playlist = Playlist.all.find_by(playlists: playlist)
            # @playlist
            # playlist_menu << @playlist
            self.add_songs
    
        end

        def add_songs
            prompt = TTY::Prompt.new
            puts "Adding songs!"
            playlist = prompt.ask("What songs do you want to add to your playlist? 🎶")
            # new_songs = Song.new(songs: song)
            # @song = Song.all.find_by(songs: song)
            # @song
            system("clear")
            self.playlist_menu
        end

 

    

def playlist_menu ##playlist menus!! 
    prompt = TTY::Prompt.new
    music_menu = prompt.select ("Hey! What are you in the mood for today?") do |menu|
            menu.choice "Pop 1"
            menu.choice "Pop 2"
            menu.choice "Rock 1"
            menu.choice "Rock 2"
            menu.choice "Rap 1"
            menu.choice "Rap 2"
            menu.choice "Country 1"
            menu.choice "Country 2"
            menu.choice "EDM 1"
            menu.choice "EDM 2"
            menu.choice "Create new playlist."
            menu.choice "Never mind, take me back to login page!"
        end
        if music_menu == "Pop 1"
            system("clear")
            self.pop_playlist1
        elsif music_menu == "Pop 2"
                system("clear")
                self.pop_playlist2
        elsif music_menu == "Rock 1"
            system("clear")
            self.rock_playlist1
        elsif music_menu == "Rock 2"
            system("clear")
            self.rock_playlist2
        elsif music_menu == "Rap 1"
            system("clear")
            self.rap_playlist1
        elsif music_menu == "Rap 2"
            system("clear")
            self.rap_playlist2
        elsif music_menu == "Country 1"
            system("clear")
            self.country_playlist1
        elsif music_menu == "Country 2"
            system("clear")
            self.country_playlist2
        elsif music_menu == "EDM 1"
            system("clear")
            self.edm_playlist1
        elsif music_menu == "EDM 2"
            system("clear")
            self.edm_playlist2
        elsif music_menu == "Create new playlist."
            system("clear")
            self.create_playlist
        elsif music_menu == "Never mind, take me back to login page!"
            system("clear")
            self.menu
        end
    end

    def pop_playlist1 
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        pop1_menu = prompt.select ("You've chosen Pop Playlist 1! Now Playing...") do |menu|
            menu.choice "Lights - Ellie Goulding"
            menu.choice "Bad Guy - Billie Eilish"
            menu.choice "Shape of You - Ed Sheeran"
            menu.choice "Diamonds - Rihanna"
            menu.choice "Shake it Off - Taylor Swift"
            menu.choice "Back to Playlist Menu"

        end
        music = Music.new('./app/models/audio/Lights.mp3') 
        music.play 
        music.volume = 50
             if pop1_menu == "Back to Playlist Menu"
                system("clear")
             end
             system("clear")
            self.playlist_menu
    end


    def pop_playlist2
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        pop2_menu = prompt.select ("You've chosen Pop Playlist 2! Now Playing...") do |menu|
        menu.choice "Shape of You - Ed Sheeran"
        menu.choice "Bad at Love - Halsey"
        menu.choice "Tell Me You Love Me - Demi Lovato"
        menu.choice "Good For You - Selena Gomez"
        menu.choice "Never Be the Same - Camilia Cabello"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/Shape_of_You.mp3') 
        music.play 
        music.volume = 50
            if pop2_menu == "Back to Playlist Menu"
                 system("clear")
             end
             system ("clear")
             self.playlist_menu
    end

    def rock_playlist1
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        rock1_menu = prompt.select ("You've chosen Rock Playlist 1! Now Playing...") do |menu|
        menu.choice "Today - Smashing Pumpkins"
        menu.choice "Machinehead - Bush"
        menu.choice "Say It Ain't So - Weezer"
        menu.choice "Lucky Denver Mind - Jimmie Eat World"
        menu.choice "Creep - Radiohead"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/Today.mp3') 
        music.play 
        music.volume = 50
        if rock1_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end

    def rock_playlist2 ##what is this song??
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        rock2_menu = prompt.select ("You've chosen Rock Playlist 2! Now Playing...") do |menu|
        menu.choice "Dammit - Blink-182"
        menu.choice "Follow You Down - Gin Blossoms"
        menu.choice "Far Behind - Candlebox"
        menu.choice "Mr. Jones - Counting Crows"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/Dammit.mp3') #needs change
        music.play 
        music.volume = 50
        if rock2_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end

    def rap_playlist1
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        rap1_menu = prompt.select ("You've chosen Rap Playlist 1! Now Playing...") do |menu|
        menu.choice "On Fire - Lloyd Banks"
        menu.choice "Murder Ink - Dr. Dre"
        menu.choice "Keep Talkin' - D12"
        menu.choice "Hypnotize - Notorious B.I.G."
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/On_Fire.mp3') #needs change
        music.play 
        music.volume = 50
        if rap1_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end

    def rap_playlist2
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        rap2_menu = prompt.select ("You've chosen Rap Playlist 2! Now Playing...") do |menu|
        menu.choice "No Flex Zone - Rae Sremmurd"
        menu.choice "Thug Luv - Bone Thugs-n-Harmony"
        menu.choice "Lucid Dreams - Juice WRLD"
        menu.choice "Forever - Drake"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/No_Flex_Zone.mp3') #needs change
        music.play 
        music.volume = 50
        if rap2_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end

    def country_playlist1
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        country1_menu = prompt.select ("You've chosen Country Playlist 1! Now Playing...") do |menu|
        menu.choice "We Are Tonight - Billy Currington"
        menu.choice "Roller Coaster - Luke Bryan"
        menu.choice "Days Go By - Keith Urban"
        menu.choice "I Hold On - Dierks Bentley"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/We_Are_Tonight.mp3') #needs change
        music.play 
        music.volume = 50
        if country1_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end

    def country_playlist2
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        country2_menu = prompt.select ("You've chosen Country Playlist 2! Now Playing...") do |menu|
        menu.choice "Beer Money - Kip Moore"
        menu.choice "Springsteen - Eric Church"
        menu.choice "Peter Pan - Kelsea Ballerini"
        menu.choice "Sugar - Mareen Morris"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/Beer_Money.mp3') #needs change
        music.play 
        music.volume = 50
        if country2_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end

    def edm_playlist1
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        edm1_menu = prompt.select ("You've chosen EDM Playlist 1! Now Playing...") do |menu|
        menu.choice "Play Hard - Krewella"
        menu.choice "No Beef - Steve Aoki"
        menu.choice "Drowning - Armin van Buuran"
        menu.choice "Don't You Worry Child - Swedish House Mafia"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/Play_Hard.mp3') #needs change
        music.play 
        music.volume = 50
        if edm1_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end

    def edm_playlist2
        prompt = TTY::Prompt.new
        system("clear")
        sleep(1)
        edm2_menu = prompt.select ("You've chosen EDM Playlist 2! Now Playing...") do |menu|
        menu.choice "Virus - Martin Garrix"
        menu.choice "Stars - Marshmello"
        menu.choice "Only Now - Seven Lions"
        menu.choice "Saving Light - Gareth Emery"
        menu.choice "Drowning - Armin van Buuran"
        menu.choice "Back to Playlist Menu"
        end
        music = Music.new('./app/models/audio/Virus.mp3') #needs change
        music.play 
        music.volume = 50
        if edm2_menu == "Back to Playlist Menu"
            system("clear")
        end
        system ("clear")
        self.playlist_menu
    end
end
    

  

    

    

   
    

   
 
    
