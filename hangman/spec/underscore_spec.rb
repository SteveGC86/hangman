require 'spec_helper'
require_relative '../hangman'
require_relative '../words'

RSpec.describe underscore do
  describe '#length' do
    context 'once word is loaded from'
    let(:word) { described_class.new(input) }
    let(:input) { 'fertilization ' }
    it 'returns the length of the word' do
      expect(word.length).to eq(input.length)
    end
  end
end