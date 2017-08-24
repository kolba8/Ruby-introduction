require "pp"

def multiples(n)
  sum = 0
  (1..n).each {|x| sum += x if x % 3 * x % 5 == 0}
  sum
end

pp multiples(10)
pp multiples(20)
