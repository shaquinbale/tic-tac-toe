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
    p @game_state
  end

  def game_won?
    
  end
end