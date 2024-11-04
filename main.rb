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
    @display.put_logo
    play_round
  end

  def play_round
    @display.put_board(@logic.game_state)
    @logic.play_move

    @current_player == 'X' ? @current_player = 'O' : @current_player = 'X'
  end
end

game = TicTacToe.new

game.play_round