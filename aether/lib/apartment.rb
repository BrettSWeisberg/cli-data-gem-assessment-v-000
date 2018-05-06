class Apartment
  attr_accessor :name, :background
  attr_reader :link

  @@all = []

  def initialize(name, link, background)
    @name = name
    @link = link
    @background = background
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list
    binding.pry
    
    @@all.each.with_index(1) do |apartment, counter|
      binding.pry
      puts " #{coutner}. #{apartment}"
    end
  end

  def self.find(input)
    @@all[input.to_i-1]
  end
end
