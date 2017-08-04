#!/usr/bin/env ruby

def tree(from, to)
  while from <= to
    (25 - from).times {print " "}
    (from * 2 - 1).times {print "*"}
    puts
    from += 1
  end
end

tree(1,4)
tree(2,6)
tree(1,1)
