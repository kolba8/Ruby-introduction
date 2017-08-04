#!/usr/bin/env ruby

def tree(from, to)
  while from <= to
    5.times do
      (7 - from).times {print " "}
      (from * 2 - 1).times {print "*"}
      (10 - from).times {print " "}
    end
    puts
    from += 1
  end
end

tree(1,4)
tree(2,6)
tree(1,1)
