class Apartment

attr_accessor :apartment
attr_reader :all

  @@all = []

  def initialize
    @@all << self
  end
end
