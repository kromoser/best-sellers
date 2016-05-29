require "nokogiri"
require "json"
require "open-uri"
require "open_uri_redirections"
require "pry"

require_relative "best_sellers/version"

#module BestSellers
#  # Your code goes here...
#end

require_relative './best_sellers/cli'
require_relative './best_sellers/books'
require_relative './best_sellers/lists'
