require "pp"

def leap_year?(year)
  if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    true
  else
    false
  end
end

def leap_years(array)
  leap = []
  array.each {|x| leap << x if leap_year?(x)}
  leap
end

pp leap_years([2011, 2012, 2015, 2016, 2018])
pp leap_years((2000..2100).to_a)
