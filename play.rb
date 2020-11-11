require 'byebug'

# Horizontal win only
def win_check(board, column, player)
  # Find last token row
  token_row = board[column].length - 1

  horizontal_count = 0

  # Loop left
  column_start = column
  3.times do
    token = board[column_start -= 1][token_row]
    if token == player
      horizontal_count =+ 1
    else
      break
    end
  end

  if horizontal_count == 4
    # Win
    return true
  end

  # Loop right
  column_start = column
  3.times do
    token = board[column_start += 1][token_row]
    if token == player
      horizontal_count =+ 1
      if horizontal_count == 4
        return true
      end
    else
      break
    end
  end
end

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
