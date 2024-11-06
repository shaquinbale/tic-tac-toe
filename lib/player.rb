require_relative 'board'

class Player
  def initialize(team)
    @board = Board.new
    @team = team
    @name = nil # This gets set later
  end

  def get_move
    puts @board.board
    puts "\nState your move."
    move = gets.chomp

    unless valid_move?(move)
      puts "Invalid move, try again"
      get_move
    end

    move
  end

  def valid_move? (move)
    return false unless move.length == 2
    
  end

  def play_move
    
  end

  def play_turn
    play_move(get_move)
  end
end