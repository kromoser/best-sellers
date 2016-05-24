
# CLI CONTROLLER #

class BestSellers::CLI

  def call
    
    display_lists
    choose_list
    # exit
  end

  def display_lists

    puts "This Week's Best Sellers Lists:"
    @lists = BestSellers::Lists.all

    @lists.each_with_index do |value, index|
      puts "#{index + 1}. #{value.name}"
    end
  end

  def choose_list
    puts "Enter the number of the list you'd like to view, type 'all' to view all lists, or type exit:"
    
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @lists[input.to_i - 1]
      #if input == "1"
      #  puts "Combined Fiction List!"
      #elsif input == "2"
      #  puts "Combined Nonfiction List"
      #elsif input == "3"
      #  puts "Hardcover Fiction List!"
      #elsif input == "4"
      #  puts "Hardcover Nonfiction List"
      #elsif input == "5"
      #  puts "Paperback Trade Fiction List"
      #elsif input == "6"
      #  puts "Paperback Mass-Market Fiction List!"
      #elsif input == "7"
      #  puts "Paperback Nonfiction List"
      #elsif input == "8"
      #  puts "E-Book Fiction List!"
      #elsif input == "9"
      #  puts "E-Book Nonfiction List"
      elsif input == "all"
        display_lists
      elsif input == "exit"
        exit
      else 
        puts "Sorry, couldn't understand you. Please enter the number of list you'd like to see, 'all', or 'exit'"
      end
    end
  end

  def exit
    puts "Goodbye! Check back next week for updated lists!"
  end

end