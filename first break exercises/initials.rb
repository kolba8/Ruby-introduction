require "pp"

def initials(string)
  init = ""
  text = string.split(" ")
  text.each do |x|
    init << x.capitalize[0]
  end
  init
end

pp initials('Jan Kozlowski')
pp initials('Jan Krzysztof Rakoczy')
pp initials('marcin nowak')
