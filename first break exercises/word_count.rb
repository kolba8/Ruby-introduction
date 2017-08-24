require "pp"

def word_count(string)
  text = string.downcase.split(" ")
  hash = {}
  text.each do |a|
    if hash[a] == nil
      hash[a] = 1
    else
      hash[a] += 1
    end
  end
  hash
end

pp word_count('foo Foo bar bar Bar')
pp word_count('Losowy ciąg znaków ciąg')
