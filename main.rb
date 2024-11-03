require 'bundler/setup'
require_relative 'lib/display'
require_relative 'lib/logic'

class TicTacToe
  def initialize
    @current_player = "X"
    @display = Display.new
    @logic = Logic.new
  end

  def start_game
    @display.logo
    puts "                        [Human] or [Computer] Opponent?"
    puts @logic.get_player_opponent

  end
end

game = TicTacToe.new

game.start_game