require_relative 'player/computer'
require_relative 'player/human'
require_relative 'board'

# Acts as the central hub of all the other classes. Doing admin work and 
# facilitating game state

class Game
  def initialize
    @current_player = 'X'
    @board = Board.new
  end  

  def start
    puts @board.logo
    puts "\nChoose a mode:"
    puts "1) Human Vs. Human"
    puts "2) Human Vs. Computer"

    choice = gets.chomp

    if choice == '1'
      player_x = Human.new('X', @board)
      player_o = Human.new('O', @board)
      play_round(player_x, player_o)
    elsif choice == '2'
      player_x = Human.new('X', @board)
      player_o = Computer.new('O', @board)
      play_round(player_x, player_o)
    else
      puts 'Invalid choice, try again.'
      start
    end

    game_over
  end

  def play_round(player_x, player_o)
    player_x.play_turn
    return unless @board.check_winner == nil
    player_o.play_turn
    return unless @board.check_winner == nil

    play_round(player_x, player_o)
  end

  def game_over(winner)
    puts 'game over'
  end
end