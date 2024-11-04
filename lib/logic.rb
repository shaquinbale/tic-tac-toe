class Logic
  attr_accessor :game_state

  def initialize
  @game_state = Array.new(3) { Array.new(3, ' ') }  # 3x3 array representing game state
  end

  def get_human_input(current_player)
    puts "Player #{current_player}, pick a move."
    gets.chomp.to_i
  end

  def legal_move?(number)
    return false unless number.length == 2
    
    tens = number / 10
    ones = number % 10
    return false unless tens.between?(0, 2) && ones.between?(0, 2)

    @game_state[number[1]][number[0]] == ' ' ? true : false
  end

  def play_move(current_player)
    move = get_human_input(current_player)
    
    # Loop until a legal move is entered
    until legal_move?(move)
      puts "Invalid move. Try again."
      move = get_human_input(current_player)
    end
  
    # Make the move
    @game_state[move[1]][move[0]] = current_player
    p @game_state
  end

  def game_won?
    game_state = @game_state
    # Rows
    game_state.each do |row|
      return true if row.uniq.length == 1 && row.first != ' '
    end
  
    # Columns
    [0, 1, 2].each do |column|
      column_values = [game_state[0][column], game_state[1][column], game_state[2][column]]
      puts column_values
      return true if column_values.uniq.length == 1 && column_values.first != ' '
    end
  
    # Diagonals
    diagonal1 = [game_state[0][0], game_state[1][1], game_state[2][2]]
    return true if diagonal1.uniq.length == 1 && diagonal1.first != ' '
  
    diagonal2 = [game_state[2][0], game_state[1][1], game_state[0][2]]
    return true if diagonal2.uniq.length == 1 && diagonal2.first != ' '
  
    false
  end
end