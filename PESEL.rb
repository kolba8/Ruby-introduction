#!/usr/bin/env ruby

require "date"

if ARGV.length != 1
  puts "This program need exactly 1 parameter"
  exit
elsif ARGV[0].to_i.digits.count != ARGV[0].length
  puts "Parameter should be a number"
  exit
elsif ARGV[0].length != 12345678901.digits.count
  puts "Usage ./args 12345678901"
  exit
end

pesel = []
pesel_string = ARGV[0].split("")
pesel_string.each { |n| pesel << n.to_i }
wages = [1,3,7,9,1,3,7,9,1,3]
i = 0
x = 0

#obliczanie daty urodzin
day = pesel[4] * 10 + pesel [5]
month = ( pesel[2] * 10 + pesel[3] ) % 20
year = 1900 + ( pesel[2] * 10 + pesel[3] ) / 20 * 100 + pesel[0] * 10 + pesel[1]

if Date.valid_date?(year,month,day) == false
  print "Pesel ", ARGV[0], " is incorrect.", "\n"
  exit
end

date = Date.new(year,month,day)

#obliczanie cyfry kontrolnej
while i <10
  x += ( pesel[i] * wages[i] ) % 10
  i += 1
end
control_number = 10 - x % 10

if control_number != pesel[10]
  print "Pesel ", ARGV[0], " is incorrect.", "\n"
  exit
end

#sprawdzanie płci
if pesel[9].even?
  sex = "female"
else
  sex = "male"
end

print "Pesel ", ARGV[0], " is correct.", "\n"
puts "Pesel info:"
print "Sex: ", sex, "\n"
print "Birth date: ", date, "\n"
