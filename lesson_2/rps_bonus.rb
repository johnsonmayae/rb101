VALID_CHOICES = %w(r p x l s) || %w(rock paper scissors lizard spock)

CHOICES = {'r' || 'rock' => :ROCK,
           'p' || 'paper' => :PAPER,
           'x' || 'scissors' => :SCISSORS,
           'l' || 'lizard' => :LIZARD,
           's' || 'spock' => :SPOCK }

WIN_CONDITIONS = {
  'rock' => { beats: ['scissors, lizard'] },
  'paper' => { beats: ['rock', 'spock'] },
  'scissors' => { beats: ['paper', 'lizard'] },
  'spock' => { beats: ['scissors', 'rock'] },
  'lizard' => { beats: ['paper', 'spock'] }
}

ACTION_DIALOGUE = {  
  ['r', 'x'] => 'ROCK crushes SCISSORS',
  ['r', 'l'] => 'ROCK crushes LIZARD',
  ['p', 'r'] => 'PAPER covers ROCK',
  ['p', 's'] => 'PAPER disproves SPOCK',
  ['x', 'p'] => 'SCISSORS cuts PAPER',
  ['x', 'l'] => 'SCISSORS decapitates LIZARD',
  ['l', 'p'] => 'LIZARD eats PAPER',
  ['l', 's'] => 'LIZARD poisons SPOCK',
  ['s', 'r'] => 'SPOCK vaporizes ROCK',
  ['s', 'x'] => 'SPOCK smashes SCISSORS' 
}


message = <<-MSG
Welcome to Rock, Paper, Scissors, Lizard, Spock!
It's like the classic game but with a twist!

The rules of the game are as follows:

Rock crushes Scissors and crushes Lizard
Paper cover Rock and disproves Spock
Scissors cuts Paper and decapitates Lizard
Lizard poisons Spock and eats Paper
Spock vaporizes Rock and crushes Scissors

First to win 3 matches wins!

Good luck!
MSG

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

player_wins = ''
computer_wins = ''

def keep_score(player, computer)
  if win?(player, computer)
    player_wins += 1
  elsif win?(computer, player)
    computer_wins += 1
  end
  prompt("The score is: #{player_wins} to #{computer_wins}")
end

prompt(message)

loop do
  choice = ''
  loop do
    choice_prompt = <<-MSG
    Choose one: 
    rock or 'r'
    paper or 'p'
    scissors or 'x'
    lizard or 'l'
    spock or 's'
    MSG
    
    prompt(choice_prompt)
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}: Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  keep_score(player_wins, computer_wins)
  
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")