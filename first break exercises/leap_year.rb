require "pp"

def leap_year?(year)
  if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    true
  else
    false
  end
end

pp leap_year?(2004)
pp leap_year?(2000)
pp leap_year?(2100)
