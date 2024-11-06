require_relative 'player/computer'
require_relative 'player/human'
require_relative 'board'

class Game
  def initialize
    @current_player = 'X'
    @board = Board.new
  end  

  def start
    puts @board.logo
    puts "\n1) Human Vs. Human"
    puts "2) Human Vs. Computer"

    choice = gets.chomp

    if choice == '1'
      player_x = Human.new
      player_o = Human.new
      play_round(player_x, player_o)
    elsif choice == '2'
      player_x = Human.new
      player_o = Computer.new
      play_round(player_x, player_o)
    else
      puts 'Invalid choice, try again.'
    end
  end

  def play_round(player_x, player_o)
    # player_x.play_turn
    # player_o.play_turn
    # play_round
  end
end

game = Game.new

puts game.logo