# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses


require_relative 'deck'

# class Player
#   # able to read and write the name and age
#   attr_accessor :name, :bankroll
#   # attr_reader only read
#   # attr_writer only write
#   def initialize(name, bankroll)
#     @name = name
#     @bankroll = bankroll
#   end



@name = []
@bankroll = []


def high_low
  puts "high_low game"
end



def pull_lever
  rand_num = rand(3)
  case rand_num
  when 1
    puts "lemon, grape, banana"
    puts "you lose!"
  when 2
    puts "cherry, lemon, cherry"
    puts "You won something"
  when 3
    puts "cherry, cherry, cherry"
    puts "You win big!"
    
  else 
    puts "try again"
  end
end


def slots
  puts "How much money would you like to play?"
  cash = gets.chomp.to_i

  puts "Total cash: $#{cash}"

  puts "Pull lever"
  pull_lever

end



def intro
  puts 'Welcome to DevPoint Labs Casino!'
  puts 'Hello, what is your name?'
  @name = gets.strip
  puts 'How much do you want to wager?'
  @bankroll = gets.to_i
  puts "$#{@bankroll} available: Welcome, #{@name.capitalize!}, lets get started!"
end

intro

def game_menu
  puts 'What would you like to play?'
  puts '1) Slots'
  puts '2) High/ Low'
  
  user_input = gets.strip.to_i
  if user_input === 1
    slots
  elsif user_input === 2
    high_low
  else 
    intro
  end
  
end



game_menu