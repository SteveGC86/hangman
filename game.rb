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
    @playing_status = PlayingStatus.new(false)
  end

  def start
    puts 'THE GAME HAS STARTED'
    library = Library.new
    @word = library.generate.chomp
    @playing_status.start
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
    if @correct.to_a.uniq.length == @word.chars.uniq.length
      puts "Congratulations you guessed the word #{@word}"
      @playing_status.stop
    else
      turn
    end
  end
  
  def lost
    if @incorrect.length >= 5
      puts "Sorry too many guesses, the man is hanging"
      @playing_status.stop
    else
      turn
    end
  end

  def continue?
    @playing_status.playing
  end

  def report
    puts @cipher.encrypt(@word, @correct)
  end
end