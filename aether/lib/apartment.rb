class Apartment
  attr_accessor :name, :background
  attr_reader :link

  @@all = []

  def initialize(name, link, background)
    @background = background
    @name = name
    @link = link
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list
    @@all.each.with_index(1) do |apartment, counter|
      puts "#{counter}. #{apartment.name}"
    end
  end

end
