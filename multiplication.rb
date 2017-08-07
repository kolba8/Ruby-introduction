#!/usr/bin/env ruby

i = 1
j = 1
print "      "
while j <= 10
  print "%-4d" % j
  j += 1
end
puts
j=1

print "      "
10.times {print "___ "}
puts

while i <= 10
  print "%-4d" % i, "| "
  while j <= 10
    print "%-4d" % (j*i)
    j += 1
  end
  i += 1
  j = 1
  puts
end
