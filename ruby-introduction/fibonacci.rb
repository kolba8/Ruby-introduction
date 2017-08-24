#!/usr/bin/env ruby

if ARGV.length != 1
  puts "This program need exactly 1 parameter"
  exit
elsif ! (ARGV[0].chars.all? { |c| "0123456789".include?(c) })
  puts "Parameter should be a number"
  exit
end

n = ARGV[0].to_i
v = 0

def fibonacci(x)
if x == 0
  f = 0
elsif x == 1
  f = 1
elsif
f = fibonacci(x-2) + fibonacci(x-1)
end
return f
end

while v < n
  puts fibonacci(v)
  v += 1
end
