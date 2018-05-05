require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './apartment.rb'


class Scraper

  attr_reader :link, :name, :background

  def self.get_page
  #  doc = Nokogiri::HTML(open("https://www.calibernyc.com/nyc-rentals"))
  #  doc = doc.css("div.portfolio.properties").css("div.image-caption")
    doc = Nokogiri::HTML(open("https://www.calibernyc.com/queens/house-for-rent/39-14-54-st-1/1273804"))
    binding.pry
  #  doc = doc.css("p.property-detail-features.content-wrapper")
  end

  def self.scraped_products
      self.get_page.each do |element|
        binding.pry
    #  apartment = Apartment.new
      @name = element.css("a")[0]
      @link = element.css("a")[0]
      @background = apartment_background
    end
  end

  def apartment_background(link)
    doc = Nokogiri::HTML(open("link"))
    doc = doc.css("p")
    puts "#{doc}"
  end
end
