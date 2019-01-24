require_relative './game'
require_relative './guess'
require_relative './cipher'

class Turn
    def turn_check
        puts "What letter you would like to guess?"

        guess = Guess.new
        check = gets.chomp.downcase.to_s

        if guess.letter_checker(check, @word)
            @correct << check
        else
            @incorrect << check
        end
    end

    def report
        # puts "So far you have guessed #{@correct.count} of #{@word.length } letters - #{@word}"
        puts @cipher.encrypt(@word, @correct)
    end
end