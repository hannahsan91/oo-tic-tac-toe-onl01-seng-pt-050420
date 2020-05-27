class TicTacToe

  def initalize(board)
    @board = board
  end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [1,4,7],
  [2,4,6],
  [0,3,6],
  [2,5,8]
]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def input_to_index(user_selection)
    user_input_to_integer = user_selection.to_i
    user_input_to_integer-1
  end

  def move(index, player_token"X")
    @board[index] = player_token
  end

  def position_taken?(index)
    if @board[index] != " "
      return true
    else
      return false
    end
  end

  def valid_move?
end
