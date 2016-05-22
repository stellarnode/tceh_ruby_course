#!/usr/bin/ruby

require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

def find_longest_word(text)
  words = text.split(/[^a-z0-9]|\s/i)
  len = 0
  found = ""
  words.each do |i|
    if i.length > len
      len = i.length
      found = i
    end
  end
  # puts "the word i found: " + found
  return found
end

def find_emails(text)
  emails = text.scan(/([a-z0-9_\.-]+@[\da-z\.-]+\.[a-z\.]{2,6})/i)
  return emails
end

def find_time(text)
  times = text.scan(/\d{1,2}:\d{2}/i)
  return times
end

puts "What URL would you like to read?"
url = gets.chomp

reg_exp_url = /^(https?:\/\/)([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/i

if url.match(reg_exp_url)

  page_content = open(url)
  # puts page_content
  puts "\nI scanned the page, and here is the longest word (alphanumeric sequence) I found:"
  puts find_longest_word(page_content) + "\n"

  emails = find_emails(page_content)
  if emails.size > 0
    puts "\nHere is a list of email addresses I found on this page: "
    puts emails
  else
    puts "\nI didn't find any email addresses on this page.\n"
  end

  times = find_time(page_content)
  if times.size > 0
    puts "\nI also found the following mentions of time on the page:"
    puts times
  end

else
  puts "I don't understand the format of the URL you entered. Please try again and remember to use http:// in the beginning. \n"
  exit(1)
end


