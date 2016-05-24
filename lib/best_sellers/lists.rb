class BestSellers::Lists
  attr_accessor :name

  def self.all

    @@all = []
    # This should return all Best Sellers lists

    #puts <<-DOC.gsub /^\s*/, ''
    #  1. Combined Print & E-Book Fiction
    #  2. Combined Print & E-Book Nonfiction
    #  3. Hardcover Fiction
    #  4. Hardcover Nonfcition
    #  5. Paperback Trade Fiction
    #  6. Paperback Mass-Market Fiction
    #  7. Paperback Nonfiction
    #  8. E-Book Fiction
    #  9. E-Book Nonfiction
    #DOC

    @@all << list_1 = self.new
    @@all << list_2 = self.new
    @@all << list_3 = self.new
    @@all << list_4 = self.new
    @@all << list_5 = self.new
    @@all << list_6 = self.new
    @@all << list_7 = self.new
    @@all << list_8 = self.new
    @@all << list_9 = self.new

    list_1.name = "Combined Print and E-Book Fiction"
    list_2.name = "Combined Print & E-Book Nonfiction"
    list_3.name = "Hardcover Fiction"
    list_4.name = "Hardcover Nonfcition"
    list_5.name = "Paperback Trade Fiction"
    list_6.name = "Paperback Mass-Market Fiction"
    list_7.name = "Paperback Nonfiction"
    list_8.name = "E-Book Fiction"
    list_9.name = "E-Book Nonfiction"

    @@all.each_with_index do |value, index|
      puts "#{index + 1}. #{value.name}"
    end
  end



end