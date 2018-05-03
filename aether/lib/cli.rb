class Cli

  def call
    puts "Welcome to  Gleenwood"
    menu
  end

  def menu
    puts "List all apartments on Gleenwood? 1 for Yes and 2 for No."
      input = gets.strip
      if input.to_i == 1
        list_apartments
      elsif input.to_i == 2
       puts "Goodbye"
      else
        puts "Please re-launch CLI and enter 1 for Yes and 2 for No. Goodbye!"
      end
  end


      def list_apartments
      #  Apartment.all.each do |apt|
      Scraper.scraped_products.each do |apt|
          puts "#{apt}"
        end
      end
end
