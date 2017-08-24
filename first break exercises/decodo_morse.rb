require "pp"

def decode_morse(string)
  text = string.split(" ")
  alphabet ="abcdefghijklmnopqrstuvwxyz".upcase.chars
  morse = ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..".split(" ")
  i = 0
  j = 0
  normal_text = ""
  while i < text.length
    if text[i] == morse[j]
      normal_text << alphabet[j]
      i += 1
      j = 0
    else
      j += 1
    end
  end
  normal_text
end

pp decode_morse('.... . .-.. .-.. --- .-- --- .-. .-.. -..')
