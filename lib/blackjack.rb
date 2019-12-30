def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end


def deal_card
  # code #deal_card here
  card = rand(1..11)
  card
end


def display_card_total(card_total)
  # code
  puts "Your cards add up to #{card_total}"
end


def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total >= 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  
  while input != 's' && input != 'h' do
    invalid_command
    prompt_user
    input = get_user_input
  end 
  if input == 'h'
    new_card = deal_card
    card_total += new_card
    card_total
  elsif input == 's'
    card_total
  end 
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  final_total = hit?(total)
  ending = display_card_total(final_total)
  end_game(ending)
end
    
