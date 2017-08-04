#!/usr/bin/env ruby

if ARGV.length != 1
  puts "This program need exactly 1 parameter"
  exit
elsif ! (ARGV[0].chars.all? { |c| "0123456789".include?(c) })
  puts "Parameter should be a number"
  exit
end

n = ARGV[0]
