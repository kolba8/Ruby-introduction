#!/usr/bin/env ruby

if ARGV.length != 2
  puts "This program need exactly 2 parameter"
  exit
elsif ! (ARGV[0].chars.all? { |c| "0123456789".include?(c) })
  puts "First parameter should be a number"
  exit
elsif ! (ARGV[1].chars.all? { |c| "0123456789".include?(c) })
  puts "Second parameter should be a number"
  exit
elsif ARGV[0].to_i > ARGV[1].to_i
  puts "Second parameter should be bigger than first number"
  exit
end

table = (ARGV[0].to_i..ARGV[1].to_i).to_a
table -= [0,1]
n = 2
while n < Math.sqrt(ARGV[1].to_i)
  i = 0
  while i < table.size
    if (table[i] % n) == 0 && table[i] != n
      table.delete_at(i)
    else
      i += 1
    end
  end
  n += 1
end
print   table.join(", "), "\n"
