# Responsible for any modifications to the board such as placing pieces,
# storing the board, checking for win conditions, etc.

class Board
  attr_reader :game_state

  def initialize
    @game_state = Array.new(3) { Array.new(3, ' ') }
  end

  def logo
    logo = <<~'ASCII'
       /$$$$$$$$ /$$$$$$  /$$$$$$        /$$$$$$$$ /$$$$$$   /$$$$$$        /$$$$$$$$ /$$$$$$  /$$$$$$$$
      |__  $$__/|_  $$_/ /$$__  $$      |__  $$__//$$__  $$ /$$__  $$      |__  $$__//$$__  $$| $$_____/
         | $$     | $$  | $$  \__/         | $$  | $$  \ $$| $$  \__/         | $$  | $$  \ $$| $$      
         | $$     | $$  | $$               | $$  | $$$$$$$$| $$               | $$  | $$  | $$| $$$$$   
         | $$     | $$  | $$               | $$  | $$__  $$| $$               | $$  | $$  | $$| $$__/   
         | $$     | $$  | $$    $$         | $$  | $$  | $$| $$    $$         | $$  | $$  | $$| $$      
         | $$    /$$$$$$|  $$$$$$/         | $$  | $$  | $$|  $$$$$$/         | $$  |  $$$$$$/| $$$$$$$$
         |__/   |______/ \______/          |__/  |__/  |__/ \______/          |__/   \______/ |________/
    ASCII
  end

  def board
    "
       a     b     c
          |     |     
    1  #{@game_state[0][0]}  |  #{@game_state[0][1]}  |  #{@game_state[0][2]}  
     _____|_____|_____
          |     |     
    2  #{@game_state[1][0]}  |  #{@game_state[1][1]}  |  #{@game_state[1][2]}  
     _____|_____|_____
          |     |     
    3  #{@game_state[2][0]}  |  #{@game_state[2][1]}  |  #{@game_state[2][2]}  
          |     |     
    "
  end

  def place_piece(row, column, piece)
    @game_state[row][column] = piece
  end

  def check_winner
    board = @game_state
    # Check rows
    board.each do |row|
      return board[0] if row[0] != ' ' && row.uniq.length == 1
    end

    # Check columns
    (0..2).each do |column|
      return board[0][column] if board[0][column] != ' ' && board[0][column] == board[1][column] && board[2][column] == board[0][column]
    end

    # Check diagonals
    return board[0][0] if board[0][0] != ' ' && board[0][0] == board[1][1] && board[1][1] == board[2][2]
    return board[0][2] if board[0][2] != ' ' && board[1][1] == board[1][1] && board[1][1] == board[2][0]

    nil
  end
end