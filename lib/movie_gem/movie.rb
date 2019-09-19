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
        def 
        MovieGem::Scraper.scrape_movies

    end
end