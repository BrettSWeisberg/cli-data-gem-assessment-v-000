require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './apartment.rb'

class Scraper

  attr_reader :all

  def self.get_page
    doc = Nokogiri::HTML(open("https://www.glenwoodnyc.com/"))
    doc = doc.css("div.new-featured-l")
    doc
  end



def self.scraped_products
  self.get_page.each do |element|
  binding.pry
     apartment = Apartment.new
      apartment.name = element.children[1].children.text
      apartment.area = element.css(".post-title").first.children.text
      apartment.link = element.css(".img src")

      @all << product

    #  apartment.price = p class span
    #  apartment.url = img alt class
    #apartment.area = (".post-title")

      #price
      #link
    end
  end

end
