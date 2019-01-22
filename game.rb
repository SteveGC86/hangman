require_relative './library'
require_relative './cipher'
require_relative './guess'
require_relative './turn'

class Game
  attr_reader :word
  @guess_counter = 0
  @correct = []
  @incorrect = []

  def start
    puts 'THE GAME HAS STARTED'
    library = Library.new
    cipher = Cipher.new
    @word = library.generate

    puts cipher.encrypt(@word)
  end

  # def turn
  #   guess = Guess.new
  #   puts "What letter you would like to guess?"
  #   check = get.chomp.downcase.to_s
  #   guess.letter_checker(check, @qword)
  # end
end
