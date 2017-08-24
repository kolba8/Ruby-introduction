require "pp"

def vowel_count(string)
  i = 0
  counter = 0
  while i < string.length
    counter += 1 if "aeiouy".include?(string[i])
    i += 1
  end
  counter
end


pp vowel_count("test")
pp vowel_count("foobar")
