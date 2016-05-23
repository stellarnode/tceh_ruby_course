class Human
    attr_accessor :full_name

    def initialize(first_name = "Some", last_name = "One")
        @age = 0
        @first_name = first_name
        @last_name = last_name
        @full_name = [first_name, last_name].join(" ")
    end

    def show_full_name
        puts @full_name
    end

    def walk
        puts "I am walking."
        count
        puts @age
    end

    private

    def count
        @age += 1
    end

end

Vasily = Human.new
Vasily.walk
Vasily.show_full_name

Alexey = Human.new("Alexey", "Petrov")
Alexey.walk
Alexey.show_full_name

puts Vasily.full_name

