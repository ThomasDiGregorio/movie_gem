require 'nokogiri'
require 'open-uri'
require 'pry'

module MovieGem
    class Scraper
        
        def self.scrape_movies
            arr = []  
            html = open("https://editorial.rottentomatoes.com/guide/best-sci-fi-movies-of-all-time/4/")
            doc = Nokogiri::HTML(html)
            movies = doc.css ("div.articleContentBody div.countdown-item")
            movies.each do |node|
                movie ={
                    title: node.css("div.article_movie_title a").text.strip,
                    synopsis: node.css("div.synopsis").text
                }
                arr.push(movie)
            end
            arr
        end
    end

end

