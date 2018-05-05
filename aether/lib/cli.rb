class Cli

  def call
    puts "Please select an apartment to see more info by type in the corresponding number."
    menu
  end

  def menu
      Apartment.list

      #  input = gets.strip
      #  if input.to_i = 1
      #

    #  else
    #    puts "Please re-launch CLI and enter 1 for Yes and 2 for No. Goodbye!"
    #  end
  end

end
