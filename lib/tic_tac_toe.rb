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
    if (0..8).include?(index)
      if @board[index] == " "
        return true
      else
        return false
      end
    else
      return false
    end
  end

  def turn
    puts "Choose a place on the board between 1 and 9"
    user_choice = gets.chomp
    user_index = input_to_index(user_choice)
    valid_user_choice = valid_move?(user_index)
    x_or_o = current_player
    if valid_user_choice == true
      move(user_index, x_or_o)
      display_board
    else
      "Please choose again."
      user_choice =  gets
    end
  end

  def turn_count
    count = 0
    @board.each do |space|
      if space != " "
        count += 1
      end
    end
    count



end




end
