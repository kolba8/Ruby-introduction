#!/usr/bin/env ruby

def find_index(array, value)
  i = 0
  while i < array.length
    if value == array[i]
      puts value
      return
    else
      i += 1
    end
  end
  puts "not found"
end

find_index([1, 2, 3, 4, 5], 3)
find_index([5, 8, 6, 2, 2, 10], 2)
find_index([10,20,30], 100)
find_index([], 0)
