class Cli

  def call
    puts "Welcome to Gleenwood"
    menu
  end

  def menu
      puts "Please select the apartment you would like more info on Gleenwood? Type the corresponding number."
      #list apartment
        input = gets.strip
        if input.to_i = 1-10

      else
        puts "Please re-launch CLI and enter 1 for Yes and 2 for No. Goodbye!"
      end
  end
end
