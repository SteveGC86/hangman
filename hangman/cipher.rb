require './library'
require_relative './turn'

class Cipher
  def encrypt(word, guessed_letters = [])
    word.each_char.map do |character|
      guessed_letters.to_a.include?(character) ? character : '_'
    end.join
  end
end