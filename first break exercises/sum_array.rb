require "pp"

def sum_array(array)
  if array.length <= 2
    0
  else
    array.sum - array.max - array.min
  end
end

pp sum_array([1,2,3,4])
pp sum_array([12,4,0,-8])
pp sum_array([12,4])
pp sum_array([120,7,145,-10,-15])
