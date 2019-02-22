require 'spec_helper'
require_relative '../guess'

RSpec.describe Guess do
  subject { Guess.new }
  let(:word) { "follow" }
  let(:correct_letter) { "o" }

  describe '#letter_checker' do
    it 'checks if a word contains a letter' do
      expect(subject.letter_checker(correct_letter, word)).to eq(true)
    end
  end
end