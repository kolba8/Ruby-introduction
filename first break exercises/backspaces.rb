require "pp"

def backspaces(string)
  text = string.chars
  i = 0
  while text[i] != nil
    if text[i] == "#"
      if i == 0
        text.delete_at(i)
      else
        2.times {text.delete_at(i-1)}
        i -= 1
      end
    else
      i += 1
    end
  end
  text.join
end

pp backspaces("abc#d##c")
pp backspaces("abc##d######")
pp backspaces("######")
pp backspaces("")
