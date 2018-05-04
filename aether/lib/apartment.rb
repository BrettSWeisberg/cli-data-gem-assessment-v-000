class Apartment

attr_accessor :name, :background
attr_reader :link

  @@all = []

  def initialize
    @@all << self
  end
end

  def self.all
    @@all
  end

  def list
    counter = 1
    all.each do |apartment|
    puts " #{coutner}. #{apartment}"
    counter += 1
  end

  def show_details

  end
end
