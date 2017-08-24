require "pp"

def complementary_DNA(dna)
  new_dna = ""
  i = 0
  while i  < dna.length
    if dna[i] == "A"
      new_dna << "T"
    elsif dna[i] == "C"
      new_dna << "G"
    elsif dna[i] == "G"
      new_dna << "C"
    elsif dna[i] == "T"
      new_dna << "A"
    end
    i += 1
  end
  new_dna
end



pp complementary_DNA("ATTA")
pp complementary_DNA("CGGC")
pp complementary_DNA("ACGTTAGTTA")
