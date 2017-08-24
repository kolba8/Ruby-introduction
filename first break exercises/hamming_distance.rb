require "pp"

def hamming_distance(word1, word2)
  i = 0
  distance = 0
  if word1.length != word2.length
     return nil
  else
    while i < word1.length
      distance += 1 if word1[i] != word2[i]
      i += 1
    end
  end
  distance
end

pp hamming_distance('1234','1235')
pp hamming_distance('GAGCCT','CATCGT')
pp hamming_distance('1234','12345')
pp hamming_distance('123','foobar')
