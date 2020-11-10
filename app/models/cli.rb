require "tty-prompt"
require "pry"
require 'rest-client'  
# require 'json' 

class CLI
    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'slant'
    @@user = nil

    def welcome
        system('clear')
        puts @@artii.asciify("it's")
        puts @@artii.asciify("myousic")
        puts @@artii.asciify("time")
        self.auth_sequence
    end

end 

    def auth_sequence
        sleep(1.5)
        @@user = User.first
        self.display_menu
        choices = { "Log In" => 1,
            "Sign Up" => 2
        }
        choice = @@prompt.select("Would you like to sign up or log in?", choices)
        if choice == 1
            @@user = User.login
            if @@user
                self.display_menu
            else
                self.auth_sequence
            end
        else
            @@user = User.signup
            if @@user
                self.display_menu
            else
                self.auth_sequence
            end
        end
    end

def display_menu
    # Displays the options to the user!
    system('clear')
    choices = { "Pop" => 1,
            "Rock" => 2, 
            "Rap" => 3,
            "Country" => 4,
        }
    action = @@prompt.select("Choose a playlist", choices)
    case action
    when 1 
        self.playlist_pop # plays a pop playlist!
    when 2
        self.playlist_rock # plays a rock playlist!
    when 3
        self.playlist_rap # plays a rap playlist!
    when 4
        self.playlist_country # plays a country playlist!
    end
end

def playlist_pop
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
end

def playlist_rock
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
end

def playlist_rap
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
end

def playlist_country
    # currently only shows 2 quesions in order to get the get the total possible score and
    # display the questions and get actual scores 
    # possible = category_data["clues"].slice(0,2).sum { |clue| clue["value"] }
    # total = category_data["clues"].slice(0,2).map do |clue|
    #     self.give_clue_prompt(category_data["title"], clue)
    # end.sum
    # puts "You scored #{total}!"
    # Game.create(user_id: @@user.id, category_id: category_id, score: total, total_possible: possible)
end

