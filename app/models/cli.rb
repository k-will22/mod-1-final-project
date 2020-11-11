require "tty-prompt"
require "pry"
# require 'rest-client'  

       


class CLI ## class for 
    attr_accessor :username

    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'slant'
    @@user = nil


    def start #opening title
        system('clear')
        puts @@artii.asciify("!    it's")
        puts @@artii.asciify("M Y O U S I C ")
        puts @@artii.asciify("time     !")
        self.welcome
        self.menu

    end
 

    def welcome #welcome sentence and menu prompt 
        sleep(0.5)
        puts "WELCOME TO MYOUSIC!"
        self.menu
    end

    def menu
        prompt = TTY::Prompt.new
        sleep(1)
        @@user = User.first
        puts "Before we get you started..."
        welcome_menu = prompt.select ("are you a new or returning listener?") do |menu|
            menu.choice "Returning Listener"
            menu.choice "New Listener"
            menu.choice "Exit"
        end
            if welcome_menu == "Returning Listener"
                system("clear")
                self.login
            elsif welcome_menu == "New Listener"
                system("clear")
                self.new_account
            elsif welcome_menu == "Exit"
                system("clear")
                exit!
            end    
        end

        def login
            prompt = TTY::Prompt.new
            puts "Welcome back, music fiend!"
            username = prompt.ask ("What is your name?")
                if User.find_by(username: username)
                    @user = User.find_by(username: username.downcase!)
                    @user
                self.playlist_menu
            elsif
                system("clear")
                who_are_you = prompt.select("Uh... we don't know you.") do |menu|
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
            username = prompt.ask("What would you like us to remember you by?")
            new_user = User.create(username: username)
            sleep(0.5)
            @user = User.all.find_by(username: username)
            @user
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
            menu.choice "Never mind, take me back to login page!"
        end
        if music_menu == "Pop 1"
            system("clear")
            self.pop_playlist_1
        elsif music_menu == "Pop 2"
                system("clear")
                self.pop_playlist_2
        elsif music_menu == "Rock 1"
            system("clear")
            self.rock_playlist_1
        elsif music_menu == "Rock 2"
            system("clear")
            self.rock_playlist_2
        elsif music_menu == "Rap 1"
            system("clear")
            self.rap_playlist_1
        elsif music_menu == "Rap 2"
            system("clear")
            self.rap_playlist_2
        elsif music_menu == "Country 1"
            system("clear")
            self.country_playlist_1
        elsif music_menu == "Country 2"
            system("clear")
            self.country_playlist_2
        elsif music_menu == "EDM 1"
            system("clear")
            self.edm_playlist_1
        elsif music_menu == "EDM 2"
            system("clear")
            self.edm_playlist_2
        elsif music_menu == "Never mind, take me back to login page!"
            system("clear")
            self.menu
        end
    end

    def pop_playlist_1
        system("clear")
        puts "You've chosen Pop Playlist 1!"
        puts "Now playing..."
        sleep(1)
    end
            

    def pop_playlist_2
        system("clear")
        puts "You've chosen Pop Playlist 2!"
        puts "Now playing..."
        sleep(1)
    end

    def rock_playlist_1
        system("clear")
        puts "You've chosen Rock Playlist 1!"
        puts "Now playing..."
        sleep(1)
    end

    def ock_playlist_2
        system("clear")
        puts "You've chosen Rock Playlist 2!"
        puts "Now playing..."
        sleep(1)
    end

    def rap_playlist_1
        system("clear")
        puts "You've chosen Rap Playlist 1!"
        puts "Now playing..."
        sleep(1)
    end

    def rap_playlist_2
        system("clear")
        puts "You've chosen Rap Playlist 2!"
        puts "Now playing..."
        sleep(1)
    end

    def country_playlist_1
        system("clear")
        puts "You've chosen Country Playlist 1!"
        puts "Now playing..."
        sleep(1)
    end

    def country_playlist_2
        system("clear")
        puts "You've chosen Country Playlist 2!"
        puts "Now playing..."
        sleep(1)
    end

    def edm_playlist_1
        system("clear")
        puts "You've chosen EDM Playlist 1!"
        puts "Now playing..."
        sleep(1)
    end

    def edm_playlist_2
        system("clear")
        puts "You've chosen EDM Playlist 2!"
        puts "Now playing..."
        sleep(1)
    end


#def pop_playlist
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
#end

#def rock_playlist
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
#end

#def rap_playlist
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
#end

#def country_playlist
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
#end
end

  
