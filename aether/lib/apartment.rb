class Apartment

attr_accessor :name, :background
attr_reader :link

  @@all = []

  def self.find(input)
    @@all[input.to_i -1]
  end

  def initialize(name, link, background)
    @name = name
    @link = link
    @background = background
    @@all << self
  end
end

  def self.all
    @@all
  end

  def list
    counter = 1
    all.each do |apartment|[0]
    puts " #{coutner}. #{apartment}"
    counter += 1
  end
end
