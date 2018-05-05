require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './apartment.rb'


class Scraper

  attr_reader :link, :name, :background

  def self.get_page
    doc = Nokogiri::HTML(open("https://www.calibernyc.com/nyc-rentals"))
    doc = doc.css("div.portfolio.properties").css("div.image-caption")
  end

  def self.scraped_products
      self.get_page.each do |element|
      apartment = Apartment.new
      @name = element.css("a")[0].attribute("title").text
      @link = element.css("a")[0].attribute("href").text
      @background = apartment_background
    end
  end

  def apartment_background(link)
    doc = Nokogiri::HTML(open(link))
    #doc = Nokogiri::HTML(open("https://www.calibernyc.com/queens/house-for-rent/39-14-54-st-1/1273804"))
    doc = doc.css("span.content-full.property-detail-features").text
    puts doc
  end
end
