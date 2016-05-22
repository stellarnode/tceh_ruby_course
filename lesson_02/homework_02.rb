puts "Give me a text to scan for double CAPS:"
text = gets.chomp

words = text.split(" ")

words.each do |w|
  if w.match(/\b[A-Z]+/)
    w.downcase!
    w.capitalize!
  elsif w.match(/[A-Z]+/)
    w.downcase!
  end
end

text = words.join(" ")

puts text