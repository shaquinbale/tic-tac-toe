require_relative 'board'

class Player
  attr_reader :team

  def initialize(team, board)
    @board = board
    @team = team
    @name = nil # This gets set later
  end

  def get_move
    puts "Error! Should be overridden by subclass"
  end

  def valid_move? (move)
    return false unless move.length == 2
    return false unless ('a'..'c').include?move[0]
    return false unless (1..3).include?move[1]

    true
  end

  def play_turn (player)
    move = player.get_move
    column = move[0].ord - 97 # The #ord of 'a' is 97, so ('a'.ord - 97) would equal zero
    row = move[1].to_i - 1

    unless @board.game_state[row][column] == ' '
      puts "That's an occupied space. Try again"
      play_turn(player)
      return
    end

    @board.place_piece(row, column, player.team)
  end
end