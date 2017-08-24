require "pp"

def palindrome?(string)
  text = string.downcase.delete(" ").chars
  i = 0
  while i < text.length
    if text[i] == text[-(i + 1)]
      i += 1
    else
      return false
    end
  end
  true
end

pp palindrome?('Kobyła ma mały bok')
pp palindrome?('kajak')
pp palindrome?('kajak i wiosło')
