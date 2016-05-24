class BestSellers::Lists
  attr_accessor :name, :books


  def self.all

    all_lists = []
    # This should return all Best Sellers lists

    # all_lists << list_1 = self.new
    # all_lists << list_2 = self.new
    # all_lists << list_3 = self.new
    # all_lists << list_4 = self.new
    # all_lists << list_5 = self.new
    # all_lists << list_6 = self.new
    # all_lists << list_7 = self.new
    # all_lists << list_8 = self.new
    # all_lists << list_9 = self.new

    list_1.name = "Combined Print and E-Book Fiction"
    list_2.name = "Combined Print & E-Book Nonfiction"
    list_3.name = "Hardcover Fiction"
    list_4.name = "Hardcover Nonfcition"
    list_5.name = "Paperback Trade Fiction"
    list_6.name = "Paperback Mass-Market Fiction"
    list_7.name = "Paperback Nonfiction"
    list_8.name = "E-Book Fiction"
    list_9.name = "E-Book Nonfiction"

    all_lists
  end

  def books
    # This should take the lists and iterate through them, 
    # create new Book instances,
    # and associate

  end


end