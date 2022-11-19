VALID_CHOICES = %w(r p x l s)

WIN_CONDITIONS = {
  'r': ['x', 'l'],
  'p': ['r', 's'],
  'x': ['p', 'l'],
  's': ['x', 'r'],
  'l': ['p', 's']
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

loop do
  def prompt(message)
    Kernel.puts("=> #{message}")
  end

  player_wins = 0
  computer_wins = 0
  current_player_wins = 0
  current_computer_wins = 0
  
  
  prompt(message)

  loop do
    choice = ''
    
    loop do
      choice_prompt = <<-MSG
      Choose one: 
      'r' for rock
      'p' for paper
      'x' for scissors
      'l' for lizard
      's' for spock
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

    if choice == computer_choice
      prompt("It's a tie!")
    elsif WIN_CONDITIONS.key?(choice) &&
          WIN_CONDITIONS.value?(computer_choice)
      prompt("You win this round!")
      current_player_wins = (player_wins += 1)
    else 
      prompt("You lose this round!")
      current_computer_wins = (computer_wins += 1)
    end

    prompt("The score is: #{current_player_wins} to #{current_computer_wins}")

    break if current_player_wins == 3 || current_computer_wins == 3


    def who_won?(player_wins, computer_wins)
      if player_wins > computer_wins
        prompt("You are the winner!")
      else
        prompt("Better luck next time...")
      end
    end
  end
  who_won?(current_player_wins, current_computer_wins)


  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
 
end

prompt("Thank you for playing!")