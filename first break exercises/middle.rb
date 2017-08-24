require "pp"

def middle (string)
  mid = ""
  if string.length % 2 == 1
    mid << string[string.length / 2]
  else
    mid << string[string.length / 2 - 1, 2]
  end
end

pp middle("abc")
pp middle("middle")
pp middle("tesTing")
