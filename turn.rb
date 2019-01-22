require_relative './game'
require_relative './guess'

class Turn
    guess = Guess.new
    puts "What is the first letter you would like to guess?"
    check = gets.chomp.downcase
    guess.letter_check(check)
end