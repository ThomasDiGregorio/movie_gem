#Munipulate scraper data from this class


module MovieGem
    class Movie
        attr_accessor :title, :synopsis

        @@all = []

        def initialize(title, synopsis)
            @title = title
            @synopsis = synopsis 
            @@all << self
        end
        def self.all
            @@all
        end
        def self.create_from_collection(movies_array)
            movies_array.each do |movie_hash|
                Movie.new(movie_hash)
            end
        end
        MovieGem::Scraper.scrape_movies

    end
end