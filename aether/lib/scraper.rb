require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './apartment.rb'

class Scraper

  def self.get_page
  #  doc = Nokogiri::HTML(open("https://www.glenwoodnyc.com/"))
  doc = Nokogiri::HTML(open("https://www.calibernyc.com/nyc-rentals"))

  #  doc = doc.css("div.new-featured-l div.col-sm-12 div.guide_box_fa.pagination_list")
    doc = doc.css("div.portfolio.properties")

  #  doc.css("div.portfolio.properties").css("div.image-caption").css.("a")

  end

  def self.scraped_products
      self.get_page.each do |element|
binding.pry
    #  apartment = Apartment.new
      name = element.children[1].children.text
      link = element.css(".img src")
      background = apartment_background
    end
  end

  def apartment_background(link)
    doc = Nokogiri::HTML(open("apartment.link"))
    doc = doc.css("p")
    puts "#{doc}"
  end
end
