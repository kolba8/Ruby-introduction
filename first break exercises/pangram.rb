require "pp"

def pangram?(string)
  alfabet = "aąbcćdeęfghijklłmnńoóprsśtuwuzźż".chars
  i = 0
  while i < alfabet.length
    if string.include?(alfabet[i]) || string.include?(alfabet[i].upcase)
      i += 1
    else
      return false
    end
  end
  true
end

pp pangram?('Dość błazeństw, żrą mój pęk luźnych fig')
pp pangram?('Losowy ciąg znaków')
