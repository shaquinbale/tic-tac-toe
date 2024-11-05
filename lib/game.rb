class Game
  def initialize
    @game_state = Array.new(3) { Array.new(3, ' ') }
  end

  def logo
    logo = <<~'ASCII'
       /$$$$$$$$ /$$$$$$  /$$$$$$        /$$$$$$$$ /$$$$$$   /$$$$$$        /$$$$$$$$ /$$$$$$  /$$$$$$$$
      |__  $$__/|_  $$_/ /$$__  $$      |__  $$__//$$__  $$ /$$__  $$      |__  $$__//$$__  $$| $$_____/
         | $$     | $$  | $$  \__/         | $$  | $$  \ $$| $$  \__/         | $$  | $$  \ $$| $$      
         | $$     | $$  | $$               | $$  | $$$$$$$$| $$               | $$  | $$  | $$| $$$$$   
         | $$     | $$  | $$               | $$  | $$__  $$| $$               | $$  | $$  | $$| $$__/   
         | $$     | $$  | $$    $$         | $$  | $$  | $$| $$    $$         | $$  | $$  | $$| $$      
         | $$    /$$$$$$|  $$$$$$/         | $$  | $$  | $$|  $$$$$$/         | $$  |  $$$$$$/| $$$$$$$$
         |__/   |______/ \______/          |__/  |__/  |__/ \______/          |__/   \______/ |________/
    ASCII
  end

  def start
    puts logo
    puts "\n1) Human Vs. Human"
    puts "2) Human Vs. Computer"

    choice = gets.chomp

    if choice == '1'
      
    elsif choice == '2'
      nil
    else
      puts 'Invalid choice, try again.'
    end
  end
end

game = Game.new

puts game.logo