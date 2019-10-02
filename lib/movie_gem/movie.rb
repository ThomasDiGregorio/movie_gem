#Munipulate scraper data from this class
binding.pry

module MovieGem
    class Movie
        attr_accessor :title, :synopsis

        def initialize(attributes = {})
            @title = attributes[:title]
            @synopsis = attributes[:synopsis] 
        end
        def self.all
            @@all ||= self.load 
        end
        def self.create_from_collection(movies_array)
            movies_array.collect do |movie_hash|
                Movie.new(movie_hash)
            end
        end
        def self.load            
            create_from_collection(MovieGem::Scraper.scrape_movies)
        end

    end
end