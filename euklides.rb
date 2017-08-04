#!/usr/bin/env ruby

if ARGV.length != 2
  puts "This program need exactly 2 parameter"
  exit
elsif ! (ARGV[0].chars.all? { |c| "0123456789".include?(c) })
  puts "Parameter 1 should be a number"
  exit
elsif ! (ARGV[1].chars.all? { |c| "0123456789".include?(c) })
  puts "Parameter 2 should be a number"
  exit
end

number1 = ARGV[0].to_i
num1 = number1
number2 = ARGV[1].to_i
num2 = number2

while number1 != number2
  if number1 > number2
    number1 = number1 - number2
  else
    number2 = number2 - number1
  end
end

print "Greatest common divisor of ", num1, " and ", num2, " is ", number1
puts
