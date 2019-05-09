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

def hit?(current_total)
  prompt_user
  h_or_s = get_user_input
  if h_or_s == "h"
    card_3 = deal_card
    current_total + card_3
  elsif h_or_s == "s"
    current_total
  end
end

def invalid_command
  unless get_user_input == "h" || get_user_input == "s"
    "Please enter a valid command"
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  current_total = initial_round # rand1 + rand 2 p "total = 14" =>14
  # puts "initializing until loop..."
  until current_total > 21
    # puts "INCREMENT"
    current_total = hit?(current_total) # "h or s?" h--> 14 + 4 s--> 
    display_card_total(current_total)
  end
  end_game(current_total)
end  
