require_relative '../player'
require_relative '../game'

# Exists to update the get_move method to interface with a human

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