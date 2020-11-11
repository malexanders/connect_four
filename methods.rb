module C4Methods
  def win_check(board, column, player)
    token_row = board[column].length - 1
    horizontal_count = 1

    # Loop left
    column_start = column
    3.times do
      token = board[column_start -= 1][token_row]
      if token == player
        horizontal_count += 1
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
        horizontal_count += 1
      else
        break
      end
    end

    if horizontal_count == 4
      return true
    end
  end
end