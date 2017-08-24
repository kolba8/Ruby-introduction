require "pp"

def rps(player1, player2)
  if player1 == player2
    return "draw"
  elsif (player1 == "rock" && player2 == "scissors") || (player1 == "paper" && player2 == "rock") || (player1 == "scissors" && player2 == "paper")
    return "player 1 won"
  else
    "player 2 won"
  end
end

pp rps('scissors','paper')
pp rps('rock','paper')
pp rps('scissors','scissors')
