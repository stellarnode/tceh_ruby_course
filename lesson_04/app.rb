require "./module1.rb"
require "./module2.rb"

a = 1
b = 2

puts Module1.add(a, b)
puts Module2.substract(a, b)

puts "Here is the content of this directory:"
puts `ls -al`
