def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  # card_total = display_card_total
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  display_card_total(card_1+card_2)
  card_1+card_2
end

def hit?(two_card_total)
  prompt_user
  # get_user_input
  if get_user_input == "h"
    card_3 = deal_card
    two_card_total + card_3
  else
    two_card_total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
