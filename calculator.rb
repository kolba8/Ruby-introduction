#!/usr/bin/env ruby

def menu
puts "Choose operation:"
puts "1. Add numbers"
puts "2. Substract numbers"
puts "3. Multiply numbers"
puts "4. Divide numbers"
puts "5. Quit"
end

def number
  table =[]
  puts "Enter first number:"
  table << gets.to_i
  puts "Enter second number:"
  table << gets.to_i
  table
end

while true
menu
choice = gets.chomp
  case choice
  when "1"
    table = number
    print table[0] , " + " , table[1] , " = " , (table[0] + table[1]), "\n"
  when "2"
    table = number
    print table[0] , " - " , table[1] , " = " , (table[0] - table[1]), "\n"
  when "3"
    table = number
    print table[0] , " * " , table[1] , " = " , (table[0] * table[1]), "\n"
  when "4"
    begin
      table = number
      print table[0] , "  / " , table[1] , " = " , (table[0] / table[1]), "\n"
    rescue
      puts "Do not divide by 0"
    end
  when "5"
    puts "Bye, bye."
    exit
  end
end
