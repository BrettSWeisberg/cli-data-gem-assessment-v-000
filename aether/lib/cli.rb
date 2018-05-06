class Cli
  attr_reader :input

  def self.call
    Scraper.new.scraped_products
    puts "Welcome!"
    puts "Please select an apartment to see more info by type in the corresponding number."

    self.menu
  end

  def self.menu
    show_apartments = Apartment.list
  end

  def selected_apartment_info
    input = gets.strip
    selected_apartment = Apartment.find(@input)

    if Apartment.find(@input) == nil
       puts "Please re-launch CLI and enter corresponding number . Goodbye!"
    else selected_apartment
    end
  end

end
