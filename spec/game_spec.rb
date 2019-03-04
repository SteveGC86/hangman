require "spec_helper"
require_relative "../game"

RSpec.describe Game do
  let(:Guess_limit) { 5 }
  let(:word) { "hangman" }

  let(:lost) {}

  describe '#continue' do
    context 'it checks if the game is won or lost' do
      it 'guesses the correct letters in a word' do
        binding.pry
      end
    end
  end
end