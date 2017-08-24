require "pp"

def invert_array(array)
  new_arr = []
  array.each {|x| new_arr << x * (-1) }
  new_arr
end

pp invert_array([1,2,3,4,5])
pp invert_array([1,-2,3,-4,5])
pp invert_array([0])
