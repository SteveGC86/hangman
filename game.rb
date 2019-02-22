require_relative './library'
require_relative './cipher'
require_relative './game_reporter'
require_relative './guess'

class Game
  INVALID_ANSWERS_LIMIT = 5
  attr_reader :word

  def initialize
    @correct = []
    @incorrect = []
    @cipher = Cipher.new
    @reporter = GameReporter.new(self)
  end

  def start
    puts 'THE GAME HAS STARTED'
    library = Library.new
    @word = library.generate.chomp
  end

  def turn
    puts "Correct: #{@correct} Incorrect: #{@incorrect}"
    puts "What letter you would like to guess?"

    guess = Guess.new
    check = gets.chomp.downcase.to_s

    if guess.letter_checker(check, @word)
      @correct << check unless @correct.include?(check)
    else
      @incorrect << check unless @incorrect.include?(check)
    end
  end

  def won?
    @correct.to_a.length == @word.chars.uniq.length
  end

  def lost?
    @incorrect.length >= INVALID_ANSWERS_LIMIT
  end

  def continue?
    !lost? && !won?
  end

  def encrypted_word
    @cipher.encrypt(@word, @correct)
  end

  def report
    system('clear')
    @reporter.report
  end
end
