require "pp"

def highest_number(number)
  arr = number.to_s.chars.sort
  i = 1
  x = ""
  while i <= arr.length
     x << arr[-i]
     i += 1
   end
   x.to_i
 end


pp highest_number(132)
pp highest_number(1464)
pp highest_number(165423)
