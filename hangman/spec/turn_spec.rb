require 'spec_helper'
require_relative '../turn'
require_relative '../guess'

RSpec.describe Turn do
  subject { Guess.new }
  let(:word) { "follow" }
  let(:correct_letter) { "o" }
  let(:incorrect_letter) { "d" }

  describe '#turn_check' do
    it 'checks if a word contains a letter' do
      expect(subject.letter_checker(correct_letter, word)).to eq(true)
    end

    it 'checks if word does not contain a letter' do
      expect(subject.letter_checker(incorrect_letter, word)).to eq(false)
    end
  end
end