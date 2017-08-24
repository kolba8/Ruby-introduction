require "pp"

def to_roman(number)
  roman = ""
  if number >= 1000
    (number / 1000).times do
      roman << "M"
      number -= 1000
    end
  end
  if number >= 900
    roman << "CM"
    number -= 900
  elsif number >= 500
    roman << "D"
    number -= 500
  elsif number >= 400
    roman << "CD"
    number -= 400
  end
  if number >= 100
    (number / 100).times do
      roman << "C"
      number -= 100
    end
  end
  if number >= 90
    roman << "XC"
    number -= 90
  elsif number >= 50
    roman << "L"
    number -= 50
  elsif number >= 40
    roman << "XL"
    number -= 40
  end
  if number >= 10
    (number / 10).times do
      roman << "X"
      number -= 10
    end
  end
  if number == 9
    roman << "IX"
    number -= 9
  elsif number >= 5
    roman << "V"
    number -= 5
  elsif number == 4
    roman << "IV"
    number -= 4
  end
  if number >= 1
    (number / 1).times do
      roman << "I"
      number -= 1
    end
  end
  roman
end

pp to_roman(5)
pp to_roman(37)
pp to_roman(924)
