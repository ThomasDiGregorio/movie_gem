require 'nokogiri'
require 'open-uri'
require 'pry'

module MovieGem
    class Scraper
        def self.get_site  
            html = open("https://editorial.rottentomatoes.com/guide/best-sci-fi-movies-of-all-time/4/")
            doc = Nokogiri::HTML(html)
            doc.css("div.row.countdown-item").each do |card|
            binding.pry
            end
        end
    end

end
MovieGem::Scraper.get_site
