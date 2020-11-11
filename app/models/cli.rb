require "tty-prompt"
require "pry"
# require 'rest-client'  


class CLI ## class for 
    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'slant'
    @@user = nil


    def start #opening title
        system('clear')
        puts @@artii.asciify("it's")
        puts @@artii.asciify("MYOUSIC")
        puts @@artii.asciify("time")
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
                CLI.login
            elsif display_menu == "New Listener"
                system("clear")
                CLI.create_account
            
        # c = { "Log In" => 1, ##### OLD STUFF!!!!!###### trying something new 
        #     "Sign Up" => 2
        # }
    #     choice = @@prompt.select("Would you like to sign up or log in?", choices)
    #     if choice == 1
    #         @@user = User.login
    #         if @@user
    #             self.display_menu
    #         else
    #             self.playlist_menu
    #         end
    #     else
    #         @@user = User.signup
    #         if @@user
    #             self.playlist_menu
    #         else
    #             self.auth_sequence
    #         end
    #     end
    # end

    # def login ##THIS WILL BE THE LOGIN
    #     prompt = TTY::Prompt.new
    #     puts "Welcome back, music-fiend!"
    #     username = prompt.ask("What is your name?")
    #     if User.find_by(username: username)
    #         @user = Use.find_by(username: username)
    #         @user
    #      CLI.display_menu
    #     elsif
    #         system("clear")
    #         never_met_you = prompt.select("Username or Password not found.") do |menu|
    #             menu.choice "Log In"
    #             menu.choice "Create an Account"
    #             system("clear")
    #         end
    #      end 
    #      if never_met_you == "Log In"
    #          system("clear")
    #          CLI.login
    #      elsif never_met_you == "Create an Account"
    #          system("clear")
    #          CLI.create_account
    #      end
    end

    # def signup
    # end

# def playlist_menu #THESE WILL BE THE PLAYLIST MENUS
#     # Displays the options to the user!
#     system('clear')
#     choices = { "Pop" => 1,
#             "Rock" => 2, 
#             "Rap" => 3,
#             "Country" => 4,
#         }
#     action = @@prompt.select("Choose a playlist", choices)
#     case action
#     when 1 
#         self.playlist_pop # plays a pop playlist!
#     when 2
#         self.playlist_rock # plays a rock playlist!
#     when 3
#         self.playlist_rap # plays a rap playlist!
#     when 4
#         self.playlist_country # plays a country playlist!
#     end
# end

#def playlist_pop
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
#end

#def playlist_rock
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
#end

#def playlist_rap
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
#end

#def playlist_country
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

