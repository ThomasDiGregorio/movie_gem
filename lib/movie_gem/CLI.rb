module MovieGem
    class CLI
        def call
            puts "Welcome to MovieGem"
            MovieGem::Scraper.get_site
        end 
    end
end