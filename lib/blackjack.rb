def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.new.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
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
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  display_card_total(deal_card + deal_card)
  sum = deal_card + deal_card
end

def hit?(number)
  # code hit? here
  prompt_user
  input = get_user_input
    if input == 's'
      number
    elsif input == "h"
      number = deal_card + number

      
    else
      puts prompt_user
      puts invalid_command
      
    end
   number
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################f

def runner
  # code runner here
  welcome
  card_total = 0
  until card_total > 21
    number = initial_round
    card_total = hit?(number)
    display_card_total(card_total)
    card_total
    
  end
  end_game(card_total)
end
