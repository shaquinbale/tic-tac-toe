class Display
  def initialize
    
  end

  def put_board(game_state)
    puts [
      "   0     1     2 ",
      "      |     |    ",
      "0  #{game_state[0][0]}  |  #{game_state[0][1]}  |  #{game_state[0][2]} ",
      " _____|_____|____",
      "      |     |    ",
      "1  #{game_state[1][0]}  |  #{game_state[1][1]}  |  #{game_state[1][2]} ",
      " _____|_____|____",
      "      |     |    ",
      "2  #{game_state[2][0]}  |  #{game_state[2][1]}  |  #{game_state[2][2]} ",
      "      |     |    \n\n",
    ]
  end

  def put_logo
    puts [
      "  _______ _____ _____   _______       _____   _______ ____  ______ ",
      " |__   __|_   _/ ____| |__   __|/\\   / ____| |__   __/ __ \\|  ____|",
      "    | |    | || |   ______| |  /  \\ | |   ______| | | |  | | |__   ",
      "    | |    | || |  |______| | / /\\ \\| |  |______| | | |  | |  __|  ",
      "    | |   _| || |____     | |/ ____ \\ |____     | | | |__| | |____ ",
      "    |_|  |_____\\_____|    |_/_/    \\_\\_____|    |_|  \\____/|______|\n\n",
    ]

    puts "                        [Human] or [Computer] Opponent?"
  end
end

Display_test = Display.new