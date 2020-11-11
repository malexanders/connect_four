require 'byebug'
require './methods.rb'
include C4Methods

# Define board
board = [
  [],
  [],
  [],
  [],
  [],
  [],
  [],
]

players = ["X", "O"]
win = false
until win do
  current_player = current_player == "X" ? players[1] : players[0]

  puts "Player #{current_player} your turn"

  column = gets.to_i
  board[column] << current_player

  if win_check(board, column, current_player)
    p board
    puts "Player #{current_player} you win!"
    break
  end
end
