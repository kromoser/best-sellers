
# CLI CONTROLLER #

class BestSellers::CLI

  def call
    
    display_lists
    choose_list
    exit
  end

  def display_lists

    puts "This Week's Best Sellers Lists:"

    puts <<-DOC.gsub /^\s*/, ''
      1. Combined Print & E-Book Fiction
      2. Combined Print & E-Book Nonfiction
      3. Hardcover Fiction
      4. Hardcover Nonfcition
      5. Paperback Trade Fiction
      6. Paperback Mass-Market Fiction
      7. Paperback Nonfiction
      8. E-Book Fiction
      9. E-Book Nonfiction
    DOC
  end

  def choose_list
    puts "Enter the number of the list you'd like to view, type 'all' to view all lists, or type exit:"
    
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input == "1"
        puts "Combined Fiction List!"
      elsif input == "2"
        puts "Combined Nonfiction List"
      elsif input == "3"
        puts "Hardcover Fiction List!"
      elsif input == "4"
        puts "Hardcover Nonfiction List"
      elsif input == "5"
        puts "Paperback Trade Fiction List"
      elsif input == "6"
        puts "Paperback Mass-Market Fiction List!"
      elsif input == "7"
        puts "Paperback Nonfiction List"
      elsif input == "8"
        puts "E-Book Fiction List!"
      elsif input == "9"
        puts "E-Book Nonfiction List"
      elsif input == "all"
        display_lists
      else 
        puts "Sorry, couldn't understand you. Please enter the number of list you'd like to see, 'all', or 'exit'"
      end
    end
  end

  def exit
    puts "Goodbye! Check back next week for updated lists!"
  end

end