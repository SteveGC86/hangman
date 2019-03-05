require 'spec_helper'
require_relative '../guess'

RSpec.describe Guess do
  let(:word) { 'animal' }
  let(:correct_letter) { 'a' }
  let(:incorrect_letter) { 'x' }

  describe '#letter_checker' do
    context 'when word includes a letter' do
      it 'returns true' do
        expect(subject.letter_checker(correct_letter, word)).to eq(true)
      end
    end

    context 'when word does not include a letter' do
      it 'returns false' do
        expect(subject.letter_checker(incorrect_letter, word)).to eq(false)
      end
    end
  end
end
