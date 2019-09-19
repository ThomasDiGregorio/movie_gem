#display data, menus, and control flow here.
#This class should also receive input to show data requested.

require 'pry'

module MovieGem
    class CLI
        def start
            puts "Welcome to MovieGem"
            menu
            #binding.p
            input = nil
            while @input != "exit" && @input != "quit"
                @input = gets.chomp
                if @input == "menu"
                    menu
                elsif @input == "1"
                    display_movies
                    puts "display's a list of movies"
                elsif @input == "2"
                    display_synopsis
                    puts "display_synopsis"
                end
            end
            puts "Thanks for checking out our MovieGem"
        end
        def menu
            MovieGem::Scraper.scrape_movies
        end
        def movie_list
          @object = Movie.all.sample(25)
          @object.each.with_index(1) do |movie, i|
             puts "#{i}. #{movie.title}"
          end
          list(@object)
       end
       def display_movies
        @@all = []
        @@all = display.all.movies
       end

       def display_synopsis
        @@all = display.all.synopsis
       end
    
 
    end
 
 end