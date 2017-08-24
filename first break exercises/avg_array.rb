require "pp"

def avg_array(*array)
  i = 0
  avg = Array.new(array[0].length,0)
  while i < array[0].length
    array.each do |a|
      avg[i] += a[i]
    end
    i += 1
  end
  avg.map {|x| x * 1.0 / array.length}
end

pp avg_array([1,3,5],[3,5,7])
pp avg_array([1,5,3,22],[12,22,13,5],[5,12,24,5],[14,40,5,17])
