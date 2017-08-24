require "pp"

def empty_line
  line = ""
  11.times {line << "+---"}
  line << "+"
end

def letter_line
  letters = "ABCDEFGHIJ".chars
  i = 0
  line = "|  "
  while i < letters.length
    line << " | "
    line << letters[i]
    i += 1
  end
  line << " |"
end

def number_line(x, array)
  line = "| "
  line << (x + 1).to_s
  i = x * 10
  10.times do
    line << " | "
    line << array[i].to_s
    i += 1
  end
  line[4] = "" if x == 9
  line << " |"
end

def map(array)
  j = 0
  pp empty_line
  pp letter_line
  10.times do
    pp empty_line
    pp number_line(j, array)
    j += 1
  end
  pp empty_line
end

def ship_selection(array)
  create4(array)
  2.times { create3(array) }
  3.times { create2(array) }
  4.times { create1(array) }
  array
end

def create4(array)
  if rand(2) == 0 #statek pionowy
    x = rand(70)
    array[x] = array[x + 10] = array[x + 20] = array[x + 30] = 4
    surroundings(array)
  else #statek poziomy
    x = 9
    while x % 10 > 6
      x = rand(100)
    end
    array[x] = array[x + 1] = array[x + 2] = array[x + 3] = 4
    surroundings(array)
  end
end

def create3(array)
  if rand(2) == 0 #statek pionowy
    x = rand(100)
    if array[x] == "o" && array[x + 10] == "o" && array[x + 20] == "o"
      array[x] = array[x + 10] = array[x + 20] = 3
      surroundings(array)
    else
      create3(array)
    end
  else #statek poziomy
    x = 9
    while x % 10 > 7 || array[x] != "o" || array[x + 1] != "o" || array[x + 2] != "o"
      x = rand(100)
    end
    array[x] = array[x + 1] = array[x + 2] = 3
    surroundings(array)
  end
end

def create2(array)
  if rand(2) == 0 #statek pionowy
    x = rand(100)
    if array[x] == "o" && array[x + 10] == "o"
      array[x] = array[x + 10] = 2
      surroundings(array)
    else
      create2(array)
    end
  else #statek poziomy
    x = 9
    while x % 10 > 8 || array[x] != "o" || array[x + 1] != "o"
      x = rand(100)
    end
    array[x] = array[x + 1] = 2
    surroundings(array)
  end
end

def create1(array)
  x = rand(100)
  if array[x] == "o"
    array[x] = 1
    surroundings(array)
  else
    create1(array)
  end
end

def surroundings(array)
  i = 0
  while i < array.length
    if array[i] == 1 || array[i] == 2 || array[i] == 3 || array[i] == 4
      if i % 10 != 0 && i > 10 && array[i - 11] == "o"
        array[i - 11] = " "
      end
      if i % 10 != 9 && i > 9 && array[i - 9] == "o"
        array[i - 9] = " "
      end
      if i % 10 != 0 && i < 90 && array[i + 9] == "o"
        array[i + 9] = " "
      end
      if i % 10 != 9 && i < 89 && array[i + 11] == "o"
        array[i + 11] = " "
      end
      if i > 9 && array[i - 10] == "o"
        array[i - 10] = " "
      end
      if i < 90 && array[i + 10] == "o"
        array[i + 10] = " "
      end
      if i % 10 != 0 && array[i - 1] == "o"
        array[i - 1] = " "
      end
      if i % 10 != 9 && array[i + 1] == "o"
        array[i + 1] = " "
      end
    end
    i += 1
  end
  array
end

def getting_argument
  puts "Where do you want to shoot? (e.q A1)"
  x = gets.upcase.chomp
  pp x
  if !("ABCDEFGHIJ".include?(x[0]) && (1..10).include?(x[1..-1].to_i))
    puts "incorrect arguement"
  end
  "ABCDEFGHIJ".index(x[0]) + (x[1..-1].to_i - 1) * 10
end

def checking_value(arg, arr1, arr2)
  if arr2[arg] != nil
    if arr2[arg] != " "
      puts "You already tried that"
    else
      if arr1[arg] == 1 || arr1[arg] == 2 || arr1[arg] == 3 || arr1[arg] == 4
        hit(arg, arr1, arr2)
      else
        puts "Miss"
        arr2[arg] = "."
      end
    end
  end
end

def hit(arg, arr1, arr2)
  puts "Hit"
  arr1[arg] -= 1
  arr2[arg] = "X"
  damage_rest_of_ship(arg, arr1)
  hit_and_sink(arr1, arr2)
  arr1
end

def damage_rest_of_ship(arg, arr1)
  if arg % 10 != 0 && arr1[arg - 1].to_i > arr1[arg]
    arr1[arg - 1] -= 1
    damage_rest_of_ship(arg-1,arr1)
  end
  if arg % 10 != 9 && arr1[arg + 1].to_i > arr1[arg]
    arr1[arg + 1] -= 1
    damage_rest_of_ship(arg+1,arr1)
  end
  if arg > 9 && arr1[arg - 10].to_i > arr1[arg]
    arr1[arg - 10] -= 1
    damage_rest_of_ship(arg-10,arr1)
  end
  if arg < 90 && arr1[arg + 10].to_i > arr1[arg]
    arr1[arg + 10] -= 1
    damage_rest_of_ship(arg+10,arr1)
  end
end

def hit_and_sink(arr1, arr2)
  i = 0
  while i < arr1.length
    if arr1[i] == 0
      if i % 10 != 0 && i > 10 && arr2[i - 11] == " "
        arr2[i - 11] = "."
      end
      if i % 10 != 9 && i > 9 && arr2[i - 9] == " "
        arr2[i - 9] = "."
      end
      if i % 10 != 0 && i < 90 && arr2[i + 9] == " "
        arr2[i + 9] = "."
      end
      if i % 10 != 9 && i < 89 && arr2[i + 11] == " "
        arr2[i + 11] = "."
      end
      if i > 9 && arr2[i - 10] == " "
        arr2[i - 10] = "."
      end
      if i < 90 && arr2[i + 10] == " "
        arr2[i + 10] = "."
      end
      if i % 10 != 0 && arr2[i - 1] == " "
        arr2[i - 1] = "."
      end
      if i % 10 != 9 && arr2[i + 1] == " "
        arr2[i + 1] = "."
      end
    end
    i += 1
  end
  arr2
end


array_of_ships = Array.new(100, "o")
array_of_player = Array.new(100, " ")
ship_selection(array_of_ships)
map(array_of_player)
 while !(array_of_ships - [1,2,3,4] == array_of_ships)
   checking_value(getting_argument, array_of_ships, array_of_player)
   map(array_of_player)
 end
puts "You won"
puts "Congratulations!!!"
