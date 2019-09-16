require 'nokogiri'
require 'open-uri'
require 'pry'

module MovieGem
    class Scraper
        def self.get_site  
            html = open("https://editorial.rottentomatoes.com/guide/best-sci-fi-movies-of-all-time/4/")
            doc = Nokogiri::HTML(html)
            #puts doc
            movies = doc.css ("div .articleContentBody div .countdown-item")
                #binding.pry
            puts movies.count
            
            
            movies.each do |movie|
                title = movie.css("div .article_movie_title a").text.strip
                synopsis = movie.css("div.synopsis").text
                object = Movie.new
            end
        end
    end

end
MovieGem::Scraper.get_site
