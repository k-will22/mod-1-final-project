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
        puts @@artii.asciify("!it's")
        puts @@artii.asciify("MYOUSIC")
        puts @@artii.asciify("time!")
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
        display_menu = prompt.select ("are you a new or returning listener?") do |menu|
            menu.choice "Returning Listener"
            menu.choice "New Listener"
        end
            if display_menu == "Returning Listener"
                system("clear")
                self.login
            elsif display_menu == "New Listener"
                system("clear")
                self.new_account
            end
        end

        def login
            prompt = TTY::Prompt.new
            puts "Welcome back, music fiend!"
            username = prompt.ask ("What is your name?")
                if User.find_by(username: username)
                    @user = User.find_by(username: username)
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
    music_menu = prompt.select ("Hello, what are you in the mood for today?") do |menu|
            menu.choice "Pop"
            menu.choice "Rock"
            menu.choice "Rap"
            menu.choice "Country"
            menu.choice "EDM"
            menu.choice "Never mind, take me back to login page!"
        end
        if music_menu == "Pop"
            system("clear")
            self.pop_playlist
        elsif music_menu == "Rock"
            system("clear")
            self.rock_playlist
        elsif music_menu == "Rap"
            system("clear")
            self.rap_playlist
        elsif music_menu == "Country"
            system("clear")
            self.country_playlist
        elsif music_menu == "EDM"
            system("clear")
            self.edm_playlist
        elsif music_menu == "Never mind, take me back to login page!"
            system("clear")
            self.menu
        end
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

  
