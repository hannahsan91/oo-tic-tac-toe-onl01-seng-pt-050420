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
  puts @board
end

def input_to_index
  

end
