require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

puts "What URL would you like to read?"
url = gets.chomp

page_content = open(url)
puts page_content
