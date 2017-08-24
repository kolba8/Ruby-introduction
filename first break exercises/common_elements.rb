require "pp"

def common_elements(arr1,arr2)
  arr1 & arr2
end

pp common_elements([1,2,3,4,5],[4,5,6])
pp common_elements(['a','b','c','d'],['c','d','e'])
pp common_elements([14,'apple',1227,'cat'],['cat',166,541,1227])
