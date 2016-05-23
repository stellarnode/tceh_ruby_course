b = 1

begin
    a = 0
    b = 1 / a
rescue ZeroDivisionError
    puts "Can't divide by zero."
    a = 2
ensure
    puts "We finished the job."
    b = b * a
    puts "b now equals to #{b}."
end
