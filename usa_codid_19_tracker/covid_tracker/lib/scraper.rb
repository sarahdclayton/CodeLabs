# access specific methods, modules, class that specific gems require
# exit to leave pry
require 'pry'
# use to parse uri file into ruby hashes
# Nokogiri::HTML("open-uri link from terminal...uri file")
require 'nokogiri'
# turns into a file instance
# URI.open("url link")
require 'open-uri'
require_relative "printable.rb"
require_relative "country.rb"

class Scraper
    extend Printable::Format
    SCRAPE_URL = "https://www.worldometers.info/coronavirus/country/us"

    def self.scrape_usa
        doc = Nokogiri::HTML(URI.open("https://www.worldometers.info/coronavirus/country/us"))
        usa_confirmed_cases = text_to_interger(doc.css(".maincounter-number")[0].text)
        usa_overall_deaths = text_to_interger(doc.css(".maincounter-number")[1].text)
        usa_recoveries = text_to_interger(doc.css(".maincounter-number")[2].text)
        
        Country.new("USA", usa_confirmed_cases, usa_overall_deaths, usa_recoveries)
    end

    def self.scrape_states
    end
end
