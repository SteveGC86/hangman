require './library'
require_relative './turn'

class Cipher
  def encrypt(word)
    word_length = word.length - 1
    puts '_ ' * word_length
    puts "Your word has #{word_length} letters"

  end
end