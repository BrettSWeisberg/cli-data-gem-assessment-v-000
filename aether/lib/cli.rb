class Cli

  def self.call
    Scraper.new.scraped_products
    puts "Welcome! Please see below all of our current listings."
    self.menu
    self.selected_apartment_info
  end

  def self.menu
    show_apartments = Apartment.list
  end

  def self.selected_apartment_info
    max = Apartment.all.count

    puts "Please select an apartment to see more info by typing in the corresponding number."
    input = gets.strip
    apt_num = input.to_i - 1
    if apt_num.between?(0, max)
      the_apt_name = Apartment.all[apt_num].name
      the_apt_link = Apartment.all[apt_num].link
      the_apt_background = Apartment.all[apt_num].background

      puts "You have selected: #{the_apt_name}"
      puts "Link: #{the_apt_link}"
      puts "Background: #{the_apt_background}"
    else
      puts "Please re-launch CLI and enter corresponding number. Goodbye!"
    end
  end

end
