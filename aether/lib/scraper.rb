require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './apartment.rb'


class Scraper
  attr_reader :link, :name, :background, :doc, :root

  def initialize
    @doc = Nokogiri::HTML(open("https://www.calibernyc.com/nyc-rentals"))
    @root = doc.css("div.portfolio.properties").css("div.image-caption")
  end

  def scraped_products
    root.each do |element|
      @name = element.css("a")[0].attribute("title").text
      @link = element.css("a")[0].attribute("href").text
      @background = Nokogiri::HTML(open(link)).css("span.content-full.property-detail-features").text
      apartment = Apartment.new(@name,@link,@background)
    end
  end

  
end
