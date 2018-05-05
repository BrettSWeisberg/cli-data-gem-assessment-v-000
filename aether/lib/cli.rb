class Cli

  attr_reader :input

  def call
    puts "Welcome!"
    Apartment.initialize
    puts "Please select an apartment to see more info by type in the corresponding number."
    menu
  end

  def menu
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
