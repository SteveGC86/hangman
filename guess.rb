require_relative './game'

class Guess
  def letter_checker(letter, word)
    letter.is_a? String? ? 'Checking if the word contains your letter' : 'please enter a letter'
    word.contains letter ? 'Congratulations you guess correctly' : 'Oh no, the word does not contain this letter'
    Game.correct << letter
  end
end
