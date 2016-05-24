require_relative "books.rb"

class BestSellers::Lists
  attr_accessor :name, :books, :list_url

  def initialize
    @books = []
  end

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

    #list_1.name = "Combined Print and E-Book Fiction"
    #list_2.name = "Combined Print & E-Book Nonfiction"
    #list_3.name = "Hardcover Fiction"
    #list_4.name = "Hardcover Nonfcition"
    #list_5.name = "Paperback Trade Fiction"
    #list_6.name = "Paperback Mass-Market Fiction"
    #list_7.name = "Paperback Nonfiction"
    #list_8.name = "E-Book Fiction"
    #list_9.name = "E-Book Nonfiction"

    # Scrape NYT site and return Best Sellers lists as well as their particular URLs
    
    html = open("http://www.nytimes.com/best-sellers-books/")
    main_list_page = Nokogiri::HTML(html)

    main_cat_list = main_list_page.css("div.story div.bookCategory h3 a")
    sub_cat_list = main_list_page.css("div.story div.bookCategory h2 a")

    all_lists << combined_fiction_list = self.new
    all_lists << combined_nonfiction_list = self.new
    all_lists << hardcover_fiction_list = self.new
    all_lists << hardcover_nonfiction_list = self.new
    all_lists << paperback_trade_list = self.new
    all_lists << paperback_mass_market_list = self.new
    all_lists << paperback_nonfiction_list = self.new
    all_lists << ebook_fiction_list = self.new
    all_lists << ebook_nonfiction_list = self.new



    combined_fiction_list.name = main_cat_list[0].text.capitalize.gsub "&amp;", "&"
    combined_fiction_list.list_url = main_cat_list[0].attribute("href").value
    
    combined_nonfiction_list.name = main_cat_list[1].text.capitalize.gsub "&amp;", "&"
    combined_nonfiction_list.list_url = main_cat_list[1].attribute("href").value
    
    hardcover_fiction_list.name = main_cat_list[2].text.capitalize
    hardcover_fiction_list.list_url = main_cat_list[2].attribute("href").value
    
    hardcover_nonfiction_list.name = main_cat_list[3].text.capitalize
    hardcover_nonfiction_list.list_url = main_cat_list[3].attribute("href").value

    paperback_trade_list.name = main_cat_list[4].text.capitalize
    paperback_trade_list.list_url = main_cat_list[4].attribute("href").value
    
    paperback_mass_market_list.name = sub_cat_list[0].text.capitalize
    paperback_mass_market_list.list_url = sub_cat_list[0].attribute("href").value
    
    paperback_nonfiction_list.name = sub_cat_list[1].text.capitalize
    paperback_nonfiction_list.list_url = sub_cat_list[1].attribute("href").value
    
    ebook_fiction_list.name = sub_cat_list[2].text.capitalize
    ebook_fiction_list.list_url = sub_cat_list[2].attribute("href").value

    ebook_nonfiction_list.name = sub_cat_list[3].text.capitalize
    ebook_nonfiction_list.list_url = sub_cat_list[3].attribute("href").value




    #binding.pry



    all_lists
  end


  def list_books

      html = open(self.list_url)
      sublist = Nokogiri::HTML(html)

      book_section = sublist.css("tr.bookDetails td.summary span.bookName")
      
      book_section.each_with_index do |section, index|
        book = BestSellers::Books.new
        book.title = sublist.css("tr.bookDetails td.summary span.bookName")[index].text.gsub(/,\s$/,"")
        book.author = sublist.css("tr.bookDetails td.summary")[index].text[/by\s(.*?)\(/, 1].gsub(/.\s$/,"")
        book.publisher = sublist.css("tr.bookDetails td.summary")[index].text[/\((.*?)\)/, 1].gsub(/.$/,"")
        
      end
      


    # This should take the lists and iterate through them, 
    # create new Book instances (?),
    # and associate them with corresponding list
    
  end


end