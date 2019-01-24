require_relative './game'
require_relative './turn'

puts "Yo Yo Yo! Welcome to HangMan. If you want to play type 'Yes' or ' No'.
If you would like to quit type 'quit' at at anytime."
response = gets.chomp.downcase

if response == 'yes'
  game = Game.new
  game.start
  game.report
  @playing = true


  # while true
  #   game.turn
  #   game.report
  # end

  while @playing == true
    game.turn
    game.won
    game.report
    puts "#{@word}"
    # break if @correct.length = @word.length
  end

else
  puts "Oh well see you next time."
  return
end