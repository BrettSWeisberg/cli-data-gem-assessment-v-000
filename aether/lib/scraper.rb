require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './apartment.rb'

class Scraper

  def self.get_page
  #  doc = Nokogiri::HTML(open("https://www.glenwoodnyc.com/"))
  doc = Nokogiri::HTML(open("https://www.calibernyc.com/nyc-rentals"))
    binding.pry
  #  doc = doc.css("div.new-featured-l div.col-sm-12 div.guide_box_fa.pagination_list")
    doc = doc.css("div.wide-column")

  end

  def self.scraped_products
      self.get_page.each do |element|

    #  apartment = Apartment.new
      apartment.name = element.children[1].children.text
      apartment.link = element.css(".img src")
    end
  end

  def background
    doc = Nokogiri::HTML(open("apartment.link"))
    doc = doc.css("p")
    puts "#{doc}"
  end
end
