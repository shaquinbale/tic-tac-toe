class Logic
  def get_player_opponent
    choice = gets.chomp

    if choice != "Human" and choice != "Computer"
      puts "Your oppenent can either be [Human] or [Computer]"

      get_player_opponent
    else
      choice
    end
  end
end