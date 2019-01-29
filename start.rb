require_relative './game'
require_relative './turn'
require_relative './playing_status'

puts "Yo Yo Yo! Welcome to HangMan. If you want to play type 'Yes' or ' No'.
If you would like to quit type 'quit' at at anytime."
response = gets.chomp.downcase

if response == 'yes'
  game = Game.new
  play = Playing_status.new(true)
  game.start
  @playing = play.check
  puts "is playing: #{@playing}"
  game.report
  # while true
  #   game.turn
  #   game.report
  # end 

  while @playing == true
    puts "start: #{@playing}"
    game.turn
    game.won
    game.report
    break if @playing == false
  end

else
  puts "Oh well see you next time."
  return
end