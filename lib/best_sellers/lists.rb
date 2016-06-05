require_relative "books.rb"

class BestSellers::Lists
  attr_accessor :name

  #def initialize
  #  @books = []
  #end

  def self.all

    all_lists = []

    # This will use the NY Times Books API to retrieve the desired Best Sellers Lists

    uri = URI("https://api.nytimes.com/svc/books/v3/lists/names.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => "fake key"
    })
    request = Net::HTTP::Get.new(uri.request_uri)
    @result = JSON.parse(http.request(request).body)
    @result["results"].each do |list|
        new_list = self.new
        all_lists << new_list
        new_list.name = list["list_name"]
    end
    #binding.pry

    all_lists

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
    
    #html = open("http://www.nytimes.com/books/best-sellers/", "Cookie" => "RMID=007f01016533569aede4000b; optimizelyEndUserId=oeu1452994020592r0.13970894273370504; __gads=ID=6efc71dc3fe3447d:T=1452994022:S=ALNI_MYa84h9EWGelpmYT3zMW3_x1e8Qiw; _cb_ls=1; _sp_id.ddc6=725d69baf84b7b0b.1452994025.3.1459287597.1452994025; __utmx=69104142.LZvTBeLwS7qDtAXtBzm_NQ$0:0; __utmxx=69104142.LZvTBeLwS7qDtAXtBzm_NQ$0:1463534357:8035200; OX_plg=swf|shk|pm; __CT_Data=gpv=2&apv_343_www06=2; WRUID=0; _ga=GA1.2.584549119.1452994022; nyt-m=6F26B2822DD0C7D1A123E9DCFA28849C&e=i.1464739200&t=i.10&v=i.1&l=l.15.3784542289.-1.-1.-1.-1.-1.-1.-1.-1.-1.-1.-1.-1.-1.-1&n=i.2&g=i.0&rc=i.0&er=i.1462511256&vr=l.4.1.0.1.0&pr=l.4.31.0.1.0&vp=i.1&gf=l.10.3784542289.-1.-1.-1.-1.-1.-1.-1.-1.-1&ft=i.0&fv=i.0&gl=l.2.-1.-1&rl=l.1.-1&cav=i.1&imu=i.1&igu=i.1&prt=i.5&kid=i.1&ica=i.0&iue=i.0&ier=i.0&iub=i.0&ifv=i.0&igd=i.0&iga=i.0&imv=i.0&igf=i.0&iru=i.0&ird=i.0&ira=i.0&iir=i.1; WT_FPC=id=a65a0242-c898-4834-a6e7-b7bd7e24a59c:lv=1464127027003:ss=1464126973213; __qca=P0-801876869-1464321642720; _gat_r2d2=1; N...223334171090%22%3A%22none%22%2C%223336921036%22%3A%22gc%22%7D; optimizelyBuckets=%7B%225355901213%22%3A%225361970061%22%7D; _dycst=dk.m.c.ss.frv3.tos.ah.; _dy_geo=US.NA.US_NY.US_NY_Brooklyn; _dy_df_geo=United%20States.New%20York.Brooklyn; _dy_toffset=0; _dyus_8765260=283%7C18%7C0%7C0%7C0%7C0.0.1452994025171.1464322373871.11328348.0%7C147%7C22%7C4%7C116%7C10%7C6%7C0%7C20%7C0%7C0%7C0%7C36%7C19%7C0%7C0%7C0%7C0%7C55%7C0%7C3%7C0%7C1%7C0; krux_segs=pugnzh4xk%7Cqd2owdmyy%7Cqo0ej6k9d%7Cqgmiaag4d%7Cm5m1krl33%7Coonzp0li4%7Cngf53l3nb%7Cpt77iwoza%7Cp9kbcuuy3%7Cpesj2ngnh%7Cosihzsglx%7Cqgmglk2fm%7Coxtp6iwgj%7Cpfs8bnr43%7Cpfs3gyxep%7Cot62o7t28%7Cow6bxaj2q%7Clmviretav%7Cpj2ksy7sw%7Cqnkrv5jvf%7Cpfs8j19yx%7Cor63eu8tq%7Coxhxo9xee%7Cor63hay7s%7Cor63arfps%7Cpesg37mzh%7Colkt7d9x1%7Cpq96ksm6t%7Cpu3zrjq10%7Cqgmk8fy8h%7Colij9j24i%7Cn7szfomx3%7Cmimp808l7%7Coypsztoyt%7Cn2xvzskys%7Cookj64uiq; _sp_id.75b0=ecf2265c6bc9c9b5.1463534361.10.1464322506.1464124260; _sp_ses.75b0=*; nyt-a=dbe570a38c88e7bd52655a4a510c647d")
    #main_list_page = Nokogiri::HTML(html)

    #main_cat_list = main_list_page.css("section.subcategory h2.subcategory-heading a")
    #binding.pry
    #sub_cat_list = main_list_page.css("div.story div.bookCategory h2 a")

    #all_lists << combined_fiction_list = self.new
    #all_lists << combined_nonfiction_list = self.new
    #all_lists << hardcover_fiction_list = self.new
    #all_lists << hardcover_nonfiction_list = self.new
    #all_lists << paperback_trade_list = self.new
    #all_lists << paperback_mass_market_list = self.new
    #all_lists << paperback_nonfiction_list = self.new
    #all_lists << ebook_fiction_list = self.new
    #all_lists << ebook_nonfiction_list = self.new



    #combined_fiction_list.name = main_cat_list[0].text.capitalize.gsub "&amp;", "&"
    #combined_fiction_list.list_url = main_cat_list[0].attribute("href").value
    
    #combined_nonfiction_list.name = main_cat_list[1].text.capitalize.gsub "&amp;", "&"
    #combined_nonfiction_list.list_url = main_cat_list[1].attribute("href").value
    
    #hardcover_fiction_list.name = main_cat_list[2].text.capitalize
    #hardcover_fiction_list.list_url = main_cat_list[2].attribute("href").value
    
    #hardcover_nonfiction_list.name = main_cat_list[3].text.capitalize
    #hardcover_nonfiction_list.list_url = main_cat_list[3].attribute("href").value

    #paperback_trade_list.name = main_cat_list[4].text.capitalize
    #paperback_trade_list.list_url = main_cat_list[4].attribute("href").value
    
    #paperback_mass_market_list.name = sub_cat_list[0].text.capitalize
    #paperback_mass_market_list.list_url = sub_cat_list[0].attribute("href").value
    
    #paperback_nonfiction_list.name = sub_cat_list[1].text.capitalize
    #paperback_nonfiction_list.list_url = sub_cat_list[1].attribute("href").value
    
    #ebook_fiction_list.name = sub_cat_list[2].text.capitalize
    #ebook_fiction_list.list_url = sub_cat_list[2].attribute("href").value

    #ebook_nonfiction_list.name = sub_cat_list[3].text.capitalize
    #ebook_nonfiction_list.list_url = sub_cat_list[3].attribute("href").value




    #binding.pry



    #all_lists
  end


  def list_books

      html = open(self.list_url)
      sublist = Nokogiri::HTML(html)

      book_section = sublist.css("tr.bookDetails td.summary span.bookName")
      
      book_section.each_with_index do |section, index|
        @books << book = BestSellers::Books.new
        book.title = sublist.css("tr.bookDetails td.summary span.bookName")[index].text.gsub(/,\s$/,"")
        book.author = sublist.css("tr.bookDetails td.summary")[index].text[/by\s(.*?)\(/, 1].gsub(/.\s$/,"")
        book.publisher = sublist.css("tr.bookDetails td.summary")[index].text[/\((.*?)\)/, 1].gsub(/.$/,"")
        
      end

      @books
      


    # This should take the lists and iterate through them, 
    # create new Book instances (?),
    # and associate them with corresponding list
    
  end


end
