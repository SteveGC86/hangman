require_relative './library'
require_relative './cipher'
require_relative './game_reporter'
require_relative './guess'
require_relative './turn'
require_relative './playing_status'

class Game
  INVALID_ANSWERS_THRESHOLD = 5
  attr_reader :word

  def initialize
    @correct = []
    @incorrect = []
    @cipher = Cipher.new
    @playing_status = PlayingStatus.new(false)
    @reporter = GameReporter.new(self)
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
      @correct << check unless @correct.include?(check)
    else
      @incorrect << check unless @incorrect.include?(check)
    end
  end

  def won?
    @correct.to_a.length == @word.chars.uniq.length
  end

  def lost?
    @incorrect.length >= INVALID_ANSWERS_THRESHOLD
  end

  def continue?
    @playing_status.playing && !lost? && !won?
  end

  def encrypted_word
    @cipher.encrypt(@word, @correct)
  end

  def report
    @reporter.report
  end
end