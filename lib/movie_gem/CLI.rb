#display data, menus, and control flow here.
#This class should also receive input to show data requested.

require 'pry'

module MovieGem
    class CLI
        def start
            puts "Welcome to MovieGem"
            Movie.load
            menu
            #binding.p
            input = nil
            while @input != "exit" && @input != "quit"
                @input = gets.chomp
                if @input == "menu"
                    menu
                elsif @input == "1"
                    movie_list
                    puts "display's a list of movies"
                elsif @input == "2"
                    display_synopsis
                    puts "display_synopsis"
                end
            end
            puts "Thanks for checking out our MovieGem"
        end
        def menu
            puts "Please select from the following options"
            puts "1, Display a list of movies"
            puts "2, Display all synopses"
            puts "To see this list at anytime type 'menu'"
        end
        def movie_list
          @object = Movie.all.sample(25)
          @object.each.with_index(1) do |movie, i|
             puts "#{i}. #{movie.title}"
          end
        
        end

        def display_synopsis
            @object = Movie.all.sample(25)
            @object.each.with_index(1) do |movie, i|
                puts "#{i}. #{movie.synopsis}"
            end
        end
        def prompt_for_movie_choice
            puts "Which movie would you like more info about?"
            @input = gets.chomp
            index = @input.to_i-1
            if index >= 0
                puts Movie.all[@input.to_i-1].synopsis
        #     end
        #     #next_action
        # end
        # def next_action
        #         puts "If you would like to see another Movie type M"
        #         puts "If you would like to exit type E"
        #         input = gets.strip.upcase
        #         if input == "M"
        #             start
        #         elsif input == "E"
        #         puts "Thanks for checking out our MovieGem"
        #         else
        #             puts "Sorry I didn't understand"
        #             next_action   
            end
        end
    end
end    
    
 
    
 
 