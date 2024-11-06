require_relative '../player'
require_relative '../game'

class Human < Player
  def get_move
    puts @board.board
    puts "\nPlayer #{self.team}, State your move."
    move = gets.chomp

    unless self.valid_move?(move)
      puts "Invalid move, try again"
      get_move
    end

    move
  end
end