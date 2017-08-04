def sum(n)
  s = 0
  i = 0
  while i <= n
    s += i if i.even?
      i += 1
  end
  s
end

puts sum(100)
