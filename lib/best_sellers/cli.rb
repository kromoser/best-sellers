
# CLI CONTROLLER #

class BestSellers::CLI
  attr_accessor :input_store
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
        puts "#{@lists[input.to_i - 1].name.upcase}:\n\n"

        @lists[input.to_i - 1].list_books.each.with_index(1) do |book, index|
          
          puts "#{index}. #{book.title}"
          puts "By #{book.author}\n\n"
        end

        @input_store = @lists[input.to_i - 1]
        choose_sub_list
      
      elsif input == "all"
        display_lists
      elsif input == "exit"
        exit
      else 
        puts "Sorry, I couldn't understand you. Please enter the number of list you'd like to see, 'all', or 'exit'"
      end
    end
  end

  def choose_sub_list
    puts "Which book would you like to learn more about?"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      input_store = @input_store

      if input.to_i > 0
        puts "#{@lists[input_store.to_i].list_books[input].title}"
         
        
      elsif input == "back"
        call
      elsif input == "all"
        display_lists
      elsif input == "exit"
        exit
      else
        puts "Sorry, I couldn't understand you. Please enter the number of book you'd like to view, 'all', 'back', or 'exit'"
      end
    end

        
      
  end

 

  def exit
    puts "Goodbye! Check back next week for updated lists!"
  end

end