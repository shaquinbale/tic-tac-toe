class Display
  def initialize
    
  end

  def render_board(game_state)
    puts [
      "   a     b     c ",
      "      |     |    ",
      "1  #{game_state[0][0]}  |  #{game_state[0][0]}  |  #{game_state[0][0]} ",
      " _____|_____|____",
      "      |     |    ",
      "2  #{game_state[0][0]}  |  #{game_state[0][0]}  |  #{game_state[0][0]} ",
      " _____|_____|____",
      "      |     |    ",
      "3  #{game_state[0][0]}  |  #{game_state[0][0]}  |  #{game_state[0][0]} ",
      "      |     |    ",
    ]
  end

  def start_game
    puts [
      "  _______ _____ _____   _______       _____   _______ ____  ______ ",
      " |__   __|_   _/ ____| |__   __|/\\   / ____| |__   __/ __ \\|  ____|",
      "    | |    | || |   ______| |  /  \\ | |   ______| | | |  | | |__   ",
      "    | |    | || |  |______| | / /\\ \\| |  |______| | | |  | |  __|  ",
      "    | |   _| || |____     | |/ ____ \\ |____     | | | |__| | |____ ",
      "    |_|  |_____\\_____|    |_/_/    \\_\\_____|    |_|  \\____/|______|\n\n",
    ]

    puts "                        Human or AI Opponent?"
  end
end

Display_test = Display.new

Display_test.start_game