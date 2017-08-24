require "pp"

def queue_time(array_of_times,number_of_cashes)
  time_needed = Array.new(number_of_cashes, 0)
  i = 0
  while i < array_of_times.length
    smallest_queue_time = time_needed.min
    j = 0
    while j < number_of_cashes
      if time_needed[j] == smallest_queue_time
        time_needed[j] += array_of_times[i]
      break
      else
        j += 1
      end
    end
    i += 1
  end
  time_needed.max
end

pp queue_time([5, 3,4], 1)
pp queue_time([10, 2, 3, 3], 2)
pp queue_time([2, 3, 10], 2)
