require_relative './game'

puts "Yo Yo Yo! Welcome to HangMan. If you want to play type 'Yes' or ' No'.
If you would like to quit type 'quit' at at anytime."
response = gets.chomp.downcase

if response == 'yes'
  game = Game.new
  game.start

  # puts "The word you're trying to guess is: #{game.word}"
else
  puts "Oh well see you next time."
  return
end


