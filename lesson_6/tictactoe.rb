INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
PLAYERS = ['Player', 'Computer']

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# who decides first player
def who_chooses
  prompt "Would you like to choose who goes first?"
  answer = gets.chomp
  if answer.downcase == 'y'
    choose_first_player
  elsif answer.downcase == 'n'
    prompt "Computer will choose who goes first."
    computer_chooses_player
  else
    prompt "Invalid selection. Please choose y or n"
  end
end

# player decides who goes first
def choose_first_player
  loop do
    prompt "Who would you like to go first? (p for Player and c for Computer)"
    first_player = gets.chomp.downcase
    if first_player.start_with?('p')
      return "Player will go first."
    elsif first_player.start_with?('c')
      return "Computer will go first."
    else 
      prompt "Invalid selection. Please choose c or p"
    end
  end
end

# computer makes the choice
def computer_chooses_player
  prompt "#{PLAYERS.sample} will go first."
end

def place_piece!(brd, player)
  if player == "Player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  if player == "Player"
    "Computer"
  else
    "Player"
  end
end


def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}) :"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # offense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  # defense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  
  # pick 5
  if brd[5] == INITIAL_MARKER
    square = 5
  end

  # regular move
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# method to keep score
def keep_score(brd, player_score, computer_score)
  if detect_winner(brd) == "Player"
    player_score << 1
  elsif detect_winner(brd) == "Computer"
    computer_score << 1
  end
end

player_score = []
computer_score = []

loop do # main loop
  board = initialize_board
  current_player = who_chooses

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end


  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    keep_score(board, player_score, computer_score)
  else
    prompt "It's a tie!"
  end
  prompt "The score is: Player: #{player_score.sum}
                Computer: #{computer_score.sum}"

  if player_score.sum == 5
    prompt "Player wins it all!"
    break
  elsif computer_score.sum == 5
    prompt "Computer wins it all!"
    break
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
