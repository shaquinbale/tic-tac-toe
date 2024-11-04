class Logic
  attr_accessor :game_state

  def initialize
  @game_state = Array.new(3, Array.new(3, ' '))  # 3x3 array representing game state
  end

  def get_human_input(current_player)
    puts "Player #{current_player}, pick a move."
    gets.chomp.to_i
  end

  def legal_move?(number)
    return false unless number.between?(10, 99)
    
    tens = number / 10
    ones = number % 10
    return false unless tens.between?(0, 2) && ones.between?(0, 2)

    @game_state[move[1]][move[0]] == ' ' ? true : false
  end

  def play_move(move, current_player)
    move = get_human_input
    get_human_input unless legal_move?(move)

    @game_state[move[1]][move[0]] = current_player
  end
end