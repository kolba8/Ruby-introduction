#!/usr/bin/env ruby
require "pp"
# require "byebug"
# byebug
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


def quick_sort(input_table, first_index_to_sort, last_index_to_sort)
i = (first_index_to_sort + last_index_to_sort) / 2
piwot = input_table[i]
input_table[i] = input_table[last_index_to_sort]
j = first_index_to_sort
i = first_index_to_sort
while i < (last_index_to_sort)
  if input_table[i] < piwot
    input_table[i], input_table[j] = input_table[j], input_table[i]
    j += 1
  end
  i += 1
end
input_table[last_index_to_sort] = input_table[j]
input_table[j] = piwot
quick_sort(input_table, first_index_to_sort,j-1) if first_index_to_sort < j-1
quick_sort(input_table, j+1, last_index_to_sort) if j+1 < last_index_to_sort
input_table
end

sorted_table = quick_sort(input_table, 0, input_table.size - 1)
pp sorted_table
