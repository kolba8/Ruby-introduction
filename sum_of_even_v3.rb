def sum(n)
  s = 0
(2..100).step(2) { |n| s += n  }
s
end

puts sum(100)
