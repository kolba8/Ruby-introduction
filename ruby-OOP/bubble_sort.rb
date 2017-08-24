#!/usr/bin/env ruby
require "pp"

i = 0
input_table = []
if ARGV.length == 0
  puts "This program need parameters"
  exit
elsif while i < ARGV.length
    if ! (ARGV[i].chars.all? { |c| "0123456789".include?(c) })
      puts "Parameters should be a number"
      exit
    else
      input_table << ARGV[i].to_i
      i += 1
    end
  end
end


i = 0

while i < (input_table.size - 1)
  j = 0
  while j < (input_table.size - 1)
    input_table[j], input_table[j+1] = input_table[j+1], input_table[j] if input_table[j] > input_table[j+1]
    j += 1
  end
  i += 1
end

sorted_table = input_table
pp sorted_table
