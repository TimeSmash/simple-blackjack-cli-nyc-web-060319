def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_1 = rand(1..11)
  card_2 = rand(1..11)
    if get_user_input == "h"
      card_3 = rand(1..11)
    end
end

def display_card_total
  if get_user_input == "h" 
    card_1+card_2+card_3
  elsif get_user_input == "s"
    card_1+card_2
  end
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
  # code #initial_round here
end

def hit?
  # code hit? here
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
    
