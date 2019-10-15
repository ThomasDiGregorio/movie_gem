require 'pry'

module MovieGem
    class CLI
        def start
            puts "Welcome to MovieGem"
            Movie.load
            menu
            input = nil
            while @input != "exit"
                @input = gets.chomp
                if @input == "menu"
                    menu
                elsif @input == "1"
                    movie_list
                    puts "display's a list of movies"
                elsif @input == "2"
                    display_synopsis
                    puts "display_synopsis"
                elsif @input == "3"
                    binding.pry
                    Movie.title.include?(word)
                    puts "title search"    
                end
            end
            puts "Thanks for checking out our MovieGem"
        end
        def menu
            puts "Please select from the following options"
            puts "1, Display a list of movies"
            puts "2, Display all synopses"
            puts "3, find title by word"
            puts "To see this list at anytime type 'menu'"
        end
        def movie_list
          @object = Movie.all
          @object.each.with_index(1) do |movie, i|
             puts "#{i}. #{movie.title}"
          end
          prompt_for_movie_choice
        
        end

        def display_synopsis
            @object = Movie.all
            @object.each.with_index(1) do |movie, i|
                puts "#{i}. #{movie.synopsis}"
            end
        
        end
        def prompt_for_movie_choice
            puts "Which movie would you like more info about?"
            puts "Pick a number"
            @input = gets.chomp
            index = @input.to_i-1
            if index >= 0
                puts Movie.all[@input.to_i-1].synopsis
            end
            menu  
        end
    end
end    
    
 
    
 
 