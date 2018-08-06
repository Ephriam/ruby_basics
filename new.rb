#print and basic variables
print "Enter a Value: " #no new line
first_num = gets.to_i
puts "value: " + (first_num*2).to_s # with new line
puts 1.class

A_constat = 'some'
A_constat = 'dfjskl' #will cause  a warning

#conditionals
    #if case
age = 6
if age >=5 && age <=6
    puts "you are in kindegarten"
elsif (age >= 7) && (age <= 13)
    puts "You are in Middle School"
else 
    puts "else Case"
end

greet = gets.chomp #chomp gets read of the new line from the input
    #switch case
case greet
when "French", "french"
    puts "Bojour"
    exit
when "Spanish"
    puts "Hola"
    exit #can completely close the program
else 
    puts ("Hello")
end
puts "aha"
    #ternary operator
puts (age>=50) ? "Old" : "Young"


    #Loops
x = 1
#do loop
loop do
    x +=1
    next unless (x % 2) == 0
    puts x
    break if x >= 10
end

x = 1
#while loop
while x <= 10
    x +=1
    next if(x % 2) == 0
    puts x
    break if(x >= 10)
end

x = 1

#untile loop
until x >= 10
    x += 1
    puts x
end

x = 1

numbers = [10, 20, 30, 40, 50]

#for loop
for number in numbers
    print "#{number},"
end

groceries = ["bannas", "oranges", "mangos"]

#each loop
groceries.each do |food|
    puts "Get Some #{food}"
end

#range loop
(0..5).each do |i|
    puts "#{i}"
end

    #unless is an other conditional the oposite of if


#functions
def add_nums(num_1, num_2)
    return num_1.to_i + num_2.to_i
    raise ArgumentError, "Enter Positive Number" unless num_1 > 0
end

puts "Added value: #{add_nums(3, 4)}" #passed by value obviously

#execeptions
begin
    1/0
rescue
    puts 'You can not divide by zero exception'
    # use exit to terminate here
end

#raise exception
begin 
    add_nums(-1, 3)
rescue ArgumentError
    puts 'That is an impossible age'
end

#strings
multiline_string = <<EOM
this is a very long string>>
EOM
puts multiline_string.include?("string")
puts multiline_string.size
puts multiline_string.count("aeiou").to_s
puts multiline_string.start_with?("this")
puts multiline_string.index("is").to_s
puts ("a" == "a") ? 'yes': 'No'
puts "a".equal?"a"
puts "Ephriam".upcase
puts "Ephriam".downcase
puts "Ephriam".swapcase
puts "Ephriam".delete("a")
name_array = "ephraim".split(//) #split every time split(/ /) will split by when it finds space
puts name_array

#objects
class Animal 
    def initialize
        puts "Creating new Animal"
    end
    def set_name(new_name)
        @name = new_name
    end
    def get_name
        @name
    end
    def name=(new_anme)
        if new_name.is_a?(Numeric) # check if new_name is number
            puts "Name can't be a number"
        else
            @name = new_name
        end
    end
end

cat = Animal.new

cat.set_name("Peekaboo")
puts cat.get_name

class Car 
    attr_accessor :name, :height, :weight
    #longer way of doing this
    #attr_reader :name, :height, :weight
    #attr_writer :name, :height, :weight
end
rover = Car.new
rover.name = "Rover"
puts rover.name

#inhearitance
class Bugati < Car
    def cost
        return "Just Expensive"
    end
end

bugati = Bugati.new
puts bugati.cost


#modules because we can inherite multiple modules
module Human
    attr_accessor :name, :height, :weight

    def run 
        puts self.name + " runs"
    end
end

    #include modules
require_relative "smart"

class Master
    include Human
    prepend Smart
    def act_smart
        return "E = 0"
    end
end

master1 = Master.new
master1.name = 'Ephriam'
puts master1.run
puts master1.act_smart
#execute code form another file
#load('otherfile.rb')

#handling file
write_handler = File.new("yourSum.out", "w")
write_handler.puts("some text").to_s
write_handler.close
data_form_file = File.read("yourSum.out") 
puts "Data from file " + data_form_file

=begin
multilineComent
=end