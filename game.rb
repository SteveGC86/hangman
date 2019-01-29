require 'set'
require_relative './library'
require_relative './cipher'
require_relative './guess'
require_relative './turn'
require_relative './playing_status'

class Game
  attr_reader :word

  def initialize
    @correct = Set.new
    @incorrect = Set.new
    @cipher = Cipher.new
    play = Playing_status.new(true)
    @playing = play.check
  end

  def start
    puts 'THE GAME HAS STARTED'
    library = Library.new
    @word = library.generate.chomp
  end

  def turn
    puts "What letter you would like to guess?"

    guess = Guess.new
    check = gets.chomp.downcase.to_s

    if guess.letter_checker(check, @word)
      @correct << check
    else
      @incorrect << check
    end

  end

  def won
    if @correct.length == @word.length
      puts "Congratulations you guessed the word #{@word}"
    else
      turn
    end
  end

  def report
    puts "correct #{@correct.length}"
    puts "report playing: #{@playing}"
    puts @cipher.encrypt(@word, @correct)
  end
end