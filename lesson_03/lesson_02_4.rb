require 'open-uri'

puts "What URL would you like to read?"
url = gets.chomp

# file_contents = open('local-file.txt') { |f| f.read }
web_contents  = open(url) {|f| puts f.read }