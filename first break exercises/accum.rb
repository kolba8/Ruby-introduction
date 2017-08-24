require "pp"

def accum(string)
  arr = []
  i = 0
  new_text = ""
  while i < string.length
    arr << (string[i] * (i + 1) )
    i += 1
  end
  arr.each {|x| x.capitalize!}
  new_text = arr.join("-")
end

pp accum("abcd")
pp accum("RqaEzty")
pp accum("cwAt")
