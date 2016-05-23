filename = "/non-existant-file"

begin
    file = open(filename)

    if file
        puts "File opened successfully."
    end
    
    puts file.read
    file.close

rescue 
    puts "Wrong file name. Let me try another one."
    filename = "lesson_03.rb"
    puts "I changed the file name to #{filename}."
    retry
end

