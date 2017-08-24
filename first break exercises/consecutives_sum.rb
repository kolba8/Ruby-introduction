require "pp"

def consecutives_sum(array)
  arr_of_sumes = []
  arr = array.uniq
  i = 0
  while i < arr.length
    arr_of_sumes <<arr[i] * array.count(arr[i])
    i += 1
  end
  arr_of_sumes
end

pp consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1])
pp consecutives_sum([1, 1, 7, 7, 3])
pp consecutives_sum([-5, -5, 7, 7, 12, 0])
