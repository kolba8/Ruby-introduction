def sum(n)
  if n < 2
    s = 0
  else
    if n.even?
      s = (2 + n) * n / 4
    else
      s = (1 + n) * (n-1) / 4
    end
  end
end

puts sum(100)
