require_relative './game'

class Guess
  def letter_checker(letter, word)
    word.include?(letter)
  end
end